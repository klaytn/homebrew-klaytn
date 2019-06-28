class CaverJava < Formula
  desc "caver-java command line tools for Klaytn"
  homepage "https://docs.klaytn.com/sdk/caverjava"
  url "https://github.com/klaytn/caver-java/releases/download/v1.0.0/caver-java.zip"

  sha256 "d651e152fb8f3855bcb0d1fe4615d541df8d04287d3bf3b324a93792ad42fef3"
  depends_on :java => "1.8+"

  def install
    prefix.install "lib"
    bin.install "bin/caver-java"
  end

  test do
    system "#{bin}/caver-java" "version"
  end
end
