class CaverJava < Formula
  desc "caver-java command line tools for Klaytn"
  homepage "https://docs.klaytn.com/sdk/caverjava"
  url "https://github.com/klaytn/caver-java/releases/download/v1.3.1/caver-java.zip"

  sha256 "7993fb566c69fc530e0c4090bfd807293b4823fd94347e88f2d3d1ff3353ff70"
  depends_on :java => "openjdk@8"

  def install
    prefix.install "lib"
    bin.install "bin/caver-java"
  end

  test do
    system "#{bin}/caver-java" "version"
  end
end
