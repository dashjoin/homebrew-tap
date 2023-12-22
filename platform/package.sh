export VERSION=5.0.44
echo Packaging homebrew dashjoin $VERSION
echo !!! do NOT forget to set the shasum in jsonata.rb !!!

curl -JLO https://download.dashjoin.com/dashjoin/dev/$VERSION/dashjoin-jar.zip
unzip -d tap dashjoin-jar.zip
zip -r dashjoin-$VERSION.zip tap/*
shasum -a 256 dashjoin-$VERSION.zip
gsutil cp dashjoin-$VERSION.zip  gs://download.dashjoin.com/homebrew-tap/dashjoin/dashjoin-$VERSION.zip
