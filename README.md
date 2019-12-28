Inshore Ship data with Segmentation and Detection Labels
====

We collected inshore ship images of different ports from GoogleEarth, and manually labeled the images for semantic  segmentation and object detection.


##Files
The images and segmentation labels are stored in seperated folders: "img" and "label".
And the rotated bounding boxes of ships for detection are written in "RotationRegionLabels.txt". 


#Annotation
In "RotationRegionLabels.txt", one image occupies a line, and each line includes: 
File name of image; Number of objects; [And then for each object] rectx(5 values, first and fifth are the same), recty(5  values, first and fifth are the same) of minimal bounding rectangle; cx,cy,w,h,theta (to indicate the rotated bounding box in  an alternative way).


#PASCAL VOC format labels for detection of rectangular bboxes
We furthermore rearrange the 200 images in folder "GoogleEarth" in accordance with PASCAL VOC format, provided in folder  "200boatRectBbox".


#Download
Link: https://pan.baidu.com/s/1GnxLkJr8HJaQzlS3wc53pQ 

Key: 4cye

You can download the whole set, or only part of it. 


#Contributor
Zhihong Pan, Hao Dou, Tian Tian, Xiangyu Tan, and many other fellows in AUTO-HUST and Computer-CUG
