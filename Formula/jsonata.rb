class Jsonata < Formula
    desc "JSONata CLI"
    homepage "https://dashjoin.com"
    url "https://download.dashjoin.com/homebrew-tap/jsonata-cli/jsonata-cli-0.5.zip"
    version "0.5"
    sha256 "74171b0bbf52703779a21c332ee35f360bae2ed3fe3da26255817baa158ddab8"
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
