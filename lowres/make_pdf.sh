echo "Generating lowres pages:"
for f in ../*.tiff
do
    echo "Converting $f ..."
    convert $f -resize 600x $f.lowres.jpg
done

# Essa página não constava no material e foi escaneada individualmente
# pelo professor João José Neto a partir de outra cópia incompleta
# do documento.
# Eu jurava que o parametro do -resize deveria ser 600x mas por algum motivo
# estranho, só acertei o tamanho com esses 2500x que ainda não consigo entender:
convert ../5-18\ assembler\ pf.jpg -rotate 180 -resize 2500x ../C05.18.lowres.jpg

echo "And now generating the PDF..."
convert ../capa*.lowres.jpg ../I*.lowres.jpg ../C*.lowres.jpg ../A*.lowres.jpg PatinhoFeio_lowres.pdf
echo "done."

rm ../*.lowres.jpg -f