for file in allPhotos/*.jpg; do
        
name=${file##*/}
        
        
year=$(echo $name | cut -d '-' -f 1)
month=$(echo $name | cut -d '-' -f 2)

if [ ! -d "segregate_photo/$year/$month" ]; then
mkdir -p segregatedPhotos/$year/$month
mv allPhotos/$name segregatedPhotos/$year/$month/$name

else
mv allPhotos/$name segregatedPhotos/$year/$month/$name

fi

done