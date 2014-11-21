#remove key from processing file
sed -i .bak s/$GUGGAPIKEY/YOURAPIKEYGOESHERE/g processing_guggenheim/processing_guggenheim.pde
rm processing_guggenheim/processing_guggenheim.pde.bak

# remove key from ruby file
sed -i .bak s/$GUGGAPIKEY/YOURAPIKEYGOESHERE/g ruby_guggenheim/guggenheim.rb
rm ruby_guggenheim/guggenheim.rb.bak