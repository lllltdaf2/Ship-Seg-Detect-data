# Inshore Ship Data with Segmentation and Detection Labels

We collected inshore ship images of different ports from GoogleEarth, and manually labeled the images for semantic segmentation and object detection.

## Files  
The images and segmentation labels are stored in seperated folders: "img" and "label".  
And the coordinates of rotated bounding boxes of ships for detection are written in "RotationRegionLabels.txt". 

## Annotation  
In "RotationRegionLabels.txt", one image occupies a line, and each line includes:  
File name of image; Number of objects; (And then for each object) rectx (5 values, first and fifth are the same), recty (5 values, first and fifth are the same) of minimal bounding rectangle; cx,cy,w,h,theta (to indicate the rotated bounding box in an alternative way).  

"showresults.m" shows the labels of data and may help you to understand the above file.

## PASCAL VOC format for detection of rectangular bboxes  
Furthermore, we provide rectangular bounding box labels for the 200 images in folder "GoogleEarth", and rearrange them in accordance with PASCAL VOC format, provided in folder  "200boatRectBbox".

## Download   
Link: https://pan.baidu.com/s/1GnxLkJr8HJaQzlS3wc53pQ  
Key: 4cye  
You can download the whole set, or only part of it. 

## Examples
Image overview:  
![](https://github.com/lllltdaf2/Ship-Seg-Detect-data/blob/master/examples/exampleimgs.png)  
Segmentation labels:  
![](https://github.com/lllltdaf2/Ship-Seg-Detect-data/blob/master/examples/exampleseglabels.png)  
Detection label example:  
![](https://github.com/lllltdaf2/Ship-Seg-Detect-data/blob/master/examples/1.png)  
![](https://github.com/lllltdaf2/Ship-Seg-Detect-data/blob/master/examples/2.png)  
![](https://github.com/lllltdaf2/Ship-Seg-Detect-data/blob/master/examples/3.png)  
![](https://github.com/lllltdaf2/Ship-Seg-Detect-data/blob/master/examples/4.png)  

## Contributor  
Zhihong Pan, Hao Dou, Tian Tian, Xiangyu Tan, and many other fellows in AIA-HUST and CS-CUG
