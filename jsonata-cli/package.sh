export VERSION=0.5
echo Packaging homebrew jsonata-cli $VERSION
echo !!! do NOT forget to set the shasum in jsonata.rb !!!

cp ~/NoBackup/dashjoin/jsonata-cli/target/jsonata-cli-$VERSION-jar-with-dependencies.jar tap/lib
zip -r jsonata-cli-$VERSION.zip tap/*
shasum -a 256 jsonata-cli-$VERSION.zip
gsutil cp jsonata-cli-$VERSION.zip  gs://download.dashjoin.com/homebrew-tap/jsonata-cli/jsonata-cli-$VERSION.zip
