# add key from processing file
sed -i .bak s/YOURAPIKEYGOESHERE/$GUGGAPIKEY/g processing_guggenheim/processing_guggenheim.pde
rm processing_guggenheim/processing_guggenheim.pde.bak

# add key to ruby file
sed -i .bak s/YOURAPIKEYGOESHERE/$GUGGAPIKEY/g ruby_guggenheim/guggenheim.rb
rm ruby_guggenheim/guggenheim.rb.bak