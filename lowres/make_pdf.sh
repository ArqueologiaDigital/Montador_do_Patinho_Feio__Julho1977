echo "Generating lowres pages:"
for f in ../*.tiff
do
    echo "Converting $f ..."
    convert $f -resize 800 $f.lowres.jpg
done

echo "And now generating the PDF..."
convert ../C*.lowres.jpg ../A*.lowres.jpg PatinhoFeio_lowres.pdf
echo "done."

rm ../*.lowres.jpg -f