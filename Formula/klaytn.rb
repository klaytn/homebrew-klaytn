class Klaytn < Formula
  desc "Klaytn Blockchain Platform"
  homepage "https://github.com/klaytn/klaytn"
  url "https://github.com/klaytn/klaytn.git", :tag => "v1.1.1"

  head "https://github.com/klaytn/klaytn.git", :branch => "master"

  depends_on "go" => :build
  depends_on :macos => :el_capitan

  def install
    system "go", "env"
    system "make", "kcn" # if this fails, try separate make/make install steps
    bin.install "build/bin/kcn"
    
    system "make", "kpn"
    bin.install "build/bin/kpn"
    
    system "make", "ken"
    bin.install "build/bin/ken"
    
    system "make", "kscn"
    bin.install "build/bin/kscn"
    
    system "make", "kgen"
    bin.install "build/bin/kgen"
    
    system "make", "homi"
    bin.install "build/bin/homi"
  end

  test do
    system "kcn", "version"
    system "kpn", "version"
    system "ken", "version"
    system "kscn", "version"
    system "kgen", "version"
  end
end
