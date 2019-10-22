class CaverJava < Formula
  desc "caver-java command line tools for Klaytn"
  homepage "https://docs.klaytn.com/sdk/caverjava"
  url "https://github.com/klaytn/caver-java/releases/download/v1.2.0/caver-java.zip"

  sha256 "d09ee824b2527d9758104fc3653a8b179f58acf41333d4c98e56ba0befbe3199"
  depends_on :java => "1.8+"

  def install
    prefix.install "lib"
    bin.install "bin/caver-java"
  end

  test do
    system "#{bin}/caver-java" "version"
  end
end
