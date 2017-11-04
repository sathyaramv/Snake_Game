function sn = ends(sn,image_size)
 
  if (sn(1,1)==0)
      sn(1,1)=image_size;
  end
  if(sn(1,2)==0)
      sn(1,2)=image_size;
  end
  if(sn(1,1)==image_size+1)
      sn(1,1)=1;
  end
  if(sn(1,2)==image_size+1)
      sn(1,2)=1;
  end




end

