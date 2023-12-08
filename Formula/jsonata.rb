class Jsonata < Formula
    desc "JSONata CLI"
    homepage "https://dashjoin.com"
    url "https://download.dashjoin.com/homebrew-tap/jsonata-cli/jsonata-cli-0.3.zip"
    version "0.3"
    sha256 "da9ba0364d0c69cbfbde6cee43ac79c2bd4121e3e33a2c7175bff56cd9b5de23"
    license "Apache-2.0"

    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/jsonata" => "jsonata"
    end

    test do
      output = shell_output("#{bin}/jsonata --version")
      assert_match "0.9.5-0.3", output
    end
  end
