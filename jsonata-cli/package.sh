cp ../../jsonata-cli/target/jsonata-cli-0.3-jar-with-dependencies.jar tap/lib
zip -r jsonata-cli-0.3.zip tap/*
shasum -a 256 jsonata-cli-0.3.zip
gsutil cp jsonata-cli/jsonata-cli-0.3.zip  gs://download.dashjoin.com/homebrew-tap/jsonata-cli/jsonata-cli-0.3.zip
