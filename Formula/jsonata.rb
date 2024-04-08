class Jsonata < Formula
    desc "JSONata CLI"
    homepage "https://dashjoin.com"
    url "https://download.dashjoin.com/homebrew-tap/jsonata-cli/jsonata-cli-0.5.zip"
    version "0.5"
    sha256 "72feca23abc15c582665af72071dd9073e662eb4816af9e96c15a8cca5f7ad7f"
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
