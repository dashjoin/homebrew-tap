class Jsonata < Formula
    desc "JSONata CLI"
    homepage "https://dashjoin.com"
    url "https://download.dashjoin.com/homebrew-tap/jsonata-cli/jsonata-cli-0.4.zip"
    version "0.4"
    sha256 "a6616a1df4ed0b575905904b71a101494ce99dc693e7d46ea51504f288cc64f1"
    license "Apache-2.0"

    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/jsonata" => "jsonata"
    end

    test do
      output = shell_output("#{bin}/jsonata --version")
      assert_match "0.9.5-0.4", output
    end
  end
