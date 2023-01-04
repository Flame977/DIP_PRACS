/* Negative image
//Displaying of an X-ray image.It implies invertin//g grey level.Black in original will look white a//nd vice versa.Formula is : s=(L-1)-r, L is numbe//r of grfey levels ,256
 
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

/*
//Thresholding
//Extreme contrast stretching (increase contrast o//f images by making// dark portion darkerand bright// portion brighter)yields thresholdin//g.For this w//e make first and last slope zero and the center //slop//e is increased.Thus r1=r2, s1=0 and s2=L-1.L//is number of grey leve//ls.
*/
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

