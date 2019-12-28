fid=fopen('E:\数据集\近岸舰船\GoogleEarth\RotationRegionLabels.txt','r');
%fid=fopen('E:\数据集\近岸舰船\水经注\RotationRegionLabels.txt','r');

row=0;
while ~feof(fid)
    row=row+sum(fread(fid,10000,'*char')==char(10));
end

row

rt_img_dir = 'E:\数据集\近岸舰船\GoogleEarth\label';
%rt_img_dir = 'E:\数据集\近岸舰船\水经注\label';

frewind(fid);

select = 1;                                     %%%%%%%%       to show specified images here!!!
%select = [12 15 21 22 29 33 50]; 
%select = 1:10; 
sn = length(select); cnt=1;

for i=1:select(end)
   imgname=fscanf(fid,'%s ',1);
   num=fscanf(fid,'%d ',1); %%%%%
   if i==select(cnt)
      imgpath = fullfile(rt_img_dir,imgname);
      I = imread(imgpath);
      figure,imshow(I);
   end
   for j=1:num
      rectx=fscanf(fid,'%f %f %f %f %f ',5); %%%%%
      recty=fscanf(fid,'%f %f %f %f %f ',5); %%%%%
      cx = fscanf(fid,'%f ',1); 
      cy = fscanf(fid,'%f ',1);  
      w= fscanf(fid,'%f ',1);
      h= fscanf(fid,'%f ',1); 
      theta= fscanf(fid,'%f ',1);     
      if i==select(cnt)
         line(rectx(:),recty(:),'color','y','LineWidth',2);
         hold on, plot(cx,cy,'r+'); text(cx+10,cy+10,[num2str(cx),' ' num2str(cy),' ', num2str(w),' ',num2str(h), ' ',num2str(theta*180/pi)],'Color','white');
      end
   end
   temp=fscanf(fid, '\n');
   if i==select(cnt)
      cnt = cnt+1;
   end
end

fclose(fid);

