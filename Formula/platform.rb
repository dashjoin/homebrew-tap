class Jsonata < Formula
    desc "Dashjoin Platform"
    homepage "https://dashjoin.com"
    url "https://download.dashjoin.com/homebrew-tap/dashjoin/dashjoin-5.0.44.zip"
    version "5.0.44"
    sha256 "b3b11c0bd9b86868b95106a0564827aaf39169e4db508730c265064e4fc33d5a"
    license "Apache-2.0"

    def install
      libexec.install Dir["*"]
      bin.install_symlink "#{libexec}/bin/dashjoin" => "dashjoin"
    end

    test do
      #output = shell_output("#{bin}/dashjoin --version")
      #assert_match "5.0.44", output
    end
  end
