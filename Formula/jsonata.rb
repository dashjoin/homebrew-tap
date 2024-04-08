class Jsonata < Formula
    desc "JSONata CLI"
    homepage "https://dashjoin.com"
    url "https://download.dashjoin.com/homebrew-tap/jsonata-cli/jsonata-cli-0.5.zip"
    version "0.5"
    sha256 "e42654add6150481a0dcb3b284916ac2fc3df742f946a379786edaef37c2cce2"
    license "Apache-2.0"

    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/jsonata" => "jsonata"
    end

    test do
      output = shell_output("#{bin}/jsonata --version")
      assert_match "0.9.6-0.5", output
    end
  end
