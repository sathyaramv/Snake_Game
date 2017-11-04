


clear all
close all
clc
robot=java.awt.Robot;

image_size = 50;

sn    = [25  25;
         25  26;
         25  27;
         25  28;
         25  29];
dir=3;
ln=5;
wait=0.1;
im = zeros(image_size,image_size);
k=randi(image_size);
h=randi(image_size);
 flag=1;
    im(h,k)=1;
im=insert_snake(im,sn);
clf
imshow(im)
prev_user = 5;


  
%w-up,a-left,d-right s-down  awsd==1523
  while(1)
      user=input('prompt');
      
       pause(wait);
     robot.keyPress(java.awt.event.KeyEvent.VK_ENTER);
     robot.keyRelease(java.awt.event.KeyEvent.VK_ENTER);
   
while ~(isempty(user) || user==1 || user==5 || user==2 || user==3)
     user=input('');
      pause(wait);
     robot.keyPress(java.awt.event.KeyEvent.VK_ENTER);
     robot.keyRelease(java.awt.event.KeyEvent.VK_ENTER);
    
end
 
 if isempty(user)
 user = prev_user;
  end

if(user==5 && dir==3)
    dir=3;
    sn(2:ln,:)=sn(1:ln-1,:)
    sn(1,2)=sn(1,2)-1;
    

elseif(user==1 && dir==3)
    dir=1;
    sn(2:ln,:)=sn(1:ln-1,:)
    sn(1,1)=sn(1,1)-1;

 elseif(user==3 && dir==3)
    dir=2;
    sn(2:ln,:)=sn(1:ln-1,:)
    sn(1,1)=sn(1,1)+1;



 elseif(user==2 && dir==4)
    dir=4;
    sn(2:ln,:)=sn(1:ln-1,:)
    sn(1,2)=sn(1,2)+1;
    

 elseif(user==1 && dir==4)
    dir=1;
    sn(2:ln,:)=sn(1:ln-1,:)
    sn(1,1)=sn(1,1)-1;

 elseif(user==3 && dir==4)
    dir=2;
    sn(2:ln,:)=sn(1:ln-1,:)
    sn(1,1)=sn(1,1)+1;


 
  elseif(user==5 && dir==1)
    dir=3;
    sn(2:ln ,:)=sn(1:ln-1,:)
    sn(1,2)=sn(1,2)-1;
    

 elseif(user==2 && dir==1)
    dir=4;
    sn(2:ln,:)=sn(1:ln-1,:)
    sn(1,2)=sn(1,2)+1;

 elseif(user==1 && dir==1)
    dir=1;
    sn(2:ln,:)=sn(1:ln-1,:)
    sn(1,1)=sn(1,1)-1;



 elseif(user==5 && dir==2)
    dir=3;
    sn(2:ln ,:)=sn(1:ln-1,:)
    sn(1,2)=sn(1,2)-1;
    

 elseif(user==2 && dir==2)
    dir=4;
    sn(2:ln,:)=sn(1:ln-1,:)
    sn(1,2)=sn(1,2)+1;

 elseif(user==3 && dir==2)
    dir=2;
    sn(2:ln,:)=sn(1:ln-1,:)
    sn(1,1)=sn(1,1)+1;
end 

if(sn(1,1)==k && sn(1,2)==h)
    beep
    flag=0;
    ln=ln+1;
    sn(ln,1)=k;
    sn(ln,2)=h;
    
end

if(flag==0)
   im = zeros(image_size,image_size);
    k=randi(image_size);
h=randi(image_size);

im(h,k)=1;

flag=1;
     
else
    im = zeros(image_size,image_size);
    im(h,k)=1;
end

sn=ends(sn,image_size);
im=insert_snake(im,sn);
clf
imshow(im)

prev_user = user;
if(ismember([sn(1,:)], sn(2:length(sn)-1,:),'rows')==1)
 beep
 break;
 end

  end

  




