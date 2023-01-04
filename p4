/* Negative image
//Displaying of an X-ray image.It implies invertin//g grey level.Black in original will look white a//nd vice versa.Formula is : s=(L-1)-r, L is numbe//r of grfey levels ,256
*/ 
clc;
original=imread("d:\cameraman.jpg");
imgdouble=double(original);
//For 8 bit image
c=255;
negative=c-original;
figure(1)
imshow(original);
figure(2)
imshow(negative);
*/
//Thresholding
//Extreme contrast stretching (increase contrast o//f images by making// dark portion darkerand bright// portion brighter)yields thresholdin//g.For this w//e make first and last slope zero and the center //slop//e is increased.Thus r1=r2, s1=0 and s2=L-1.L//is number of grey leve//ls.

clc;
original=imread("d:\cameraman.jpg");
dup=original;
[row column]=size(dup);
thresh=input("Enter value of threshold");
for i=1:row
    for j=1:column
        if(original(i,j)< thresh)
            dup(i,j)=0;
        else
            dup(i,j)=255;
        end
     end
end
figure(1),imshow(original);
figure(1),imshow(dup);

/*
//Grey level slicing without background
//Thresholding splits grey level into two parts. w//e need to highlight specific range of grey value//s for eg. enhancing flaws in X-ray image . here //we select a band of grey level values.First we u//se Grey level slicing without background. s=L-1 //for a<=r<=b. 
clc;
original=imread("c:\users\dell\documents\cameraman.jpg");
doub=double(original);
[row column]=size(doub);
for i=1:1:row
    for j=1:1:column
        if((doub(i,j)> 50)) && (doub(i,j)<150)
            doub(i,j)=0;
        end
     end
end
figure(1), imshow(original);
figure(2),imshow(uint8(doub));
*/
/*
//Grey level slicing with background
//in some application we not only need to enhance //band of grey levels but also to retain backgroun//d. The transformation is: s=L-1,for a<=r<=b and //s=r for all other values.
clc;
original=imread("c:\users\dell\documents\cameraman.jpg");
doub=double(original);
[row column]=size(doub);
for i=1:1:row
    for j=1:1:column
        if((doub(i,j)> 50)) && (doub(i,j)<150)
            doub(i,j)=original(i,j);
        end
     end
end
figure(1), imshow(original);
figure(2),imshow(uint8(doub));
*/



/*
// clearing the output screen
//Bit plane slicing is used in image compression.
clc;
  
//reading image's pixel in c
c=imread("c:\users\dell\documents\cameraman.jpg");
  
//storing image information in cd
cd = double(c);
  
//extracting all bit one by one
//from 1st to 8th in variable
//from c1 to c8 respectively
/*an image8 bit word, then the 0th bit plane consists of  last bit of each grey value. as the last bit has the least effectin terms of the magnitude of the value, it is called LSB and the corresponding plane, a lsb plane. similarly 7th bit plane consists of first bit in each value. so it is MSB plane.for a grey scale image, we start by making it a matrix of type double and so we can perform arithmatic on the values. and now we isolate bit plane by diving matrix cd by successive powers of two , neglecting the remainder and checking whether final bit is 0 or 1 using mod function. 

c1 = modulo(cd, 2);
c2 = modulo(floor(cd/2), 2);
c3 = modulo(floor(cd/4), 2);
c4 = modulo(floor(cd/8), 2);
c5 = modulo(floor(cd/16), 2);
c6 = modulo(floor(cd/32), 2);
c7 = modulo(floor(cd/64), 2);
c8 = modulo(floor(cd/128), 2);
  
//combining image again to form equivalent to ori//ginal grayscale image
cc = (2 * (2 * (2 * (2 * (2 * (2 * (2 * c8 + c7) + c6) + c5) + c4) + c3) + c2) + c1);
  
//plotting original image in first subplot
subplot(2, 5, 1);
imshow(c);
title('Original Image');
  
//plotting binary image having extracted bit from //1st to 8th
// in subplot from 2nd to 9th
subplot(2, 5, 2);
imshow(c1);
title('Bit Plane 1');
subplot(2, 5, 3);
imshow(c2);
title('Bit Plane 2');
subplot(2, 5, 4);
imshow(c3);
title('Bit Plane 3');
subplot(2, 5, 5);
imshow(c4);
title('Bit Plane 4');
subplot(2, 5, 6);
imshow(c5);
title('Bit Plane 5');
subplot(2, 5, 7);
imshow(c6);
title('Bit Plane 6');
subplot(2, 5, 8);
imshow(c7);
title('Bit Plane 7');
subplot(2, 5, 9);
imshow(c8);
title('Bit Plane 8');
  
//plotting recombined image in 10th subplot
subplot(2, 5, 10);
imshow(uint8(cc));
title('Recombined Image');
*/
