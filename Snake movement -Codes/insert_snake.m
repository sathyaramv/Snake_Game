function image = insert_snake(image,sna)
snake_length=length(sna);
for i=1:snake_length
    image(sna(i,2),sna(i,1))=1;
end
end