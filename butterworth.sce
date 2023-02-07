//program to demonstrate butterworth lowpass filter
//read the input image
clc;
original1=imread("");
original=rgb2gray(original);
[m,n]=size(original);
//set the cut off frequency
fc=30;
//specifying the filter order
N=2;
//finding th center of image
a=round(m/2);
b=round(n/2);
//defining the filter kernel
//i and j are dimensions of input image
H=zeros(m,n);
for i=1:m
    for j=1:n
        d=((i-a)^2+(j-b)^2)^0.5;
        H(i,j)=1/(1+((d/fc)^(1*N)));
     end
end

//input image to be shifted from spatialdomain to frequency domain
original_freq=fftshift(fft2(original));
//H is filter function ,multiplication in frequency domain is nothing but convolution of image and apply the butterworth LPF
applpf=(original_freq).*H;
finalout=abs(ifft(applpf));
/*
lp1=fft2(original);
lp2=fftshift(lp1);
lp3=lp2.*c;
lp4=abs(ifft2(lp3));
*/

subplot(2,2,1);imshow(original);
subplot(2,2,2);imshow(H);
subplot(2,2,3);surf(H);
subplot(2,2,4);imshow(uint8(finalout));




