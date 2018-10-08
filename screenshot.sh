screenshotLocation=~/Files/Images/Screenshots/

date=$(date +%Y-%m-%d-%H-%M-%S)
filename='screenshot.'$date'.png'
import -trim $filename
mv --backup=numbered $filename $screenshotLocation
xclip -selection clipboard -t image/png -i $screenshotLocation$filename
