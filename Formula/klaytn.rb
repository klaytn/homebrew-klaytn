class Klaytn < Formula
  desc "Klaytn Blockchain Platform"
  homepage "https://docs.klaytn.com"
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
    
    system "make", "kbn"
    bin.install "build/bin/kbn"
    
    system "make", "kscn"
    bin.install "build/bin/kscn"
    
    system "make", "kspn"
    bin.install "build/bin/kspn"
    
    system "make", "ksen"
    bin.install "build/bin/ksen"
    
    system "make", "kgen"
    bin.install "build/bin/kgen"
    
    system "make", "homi"
    bin.install "build/bin/homi"
    
    system "make", "abigen"
    bin.install "build/bin/abigen"
  end

  test do
    system "kcn", "version"
    system "kpn", "version"
    system "ken", "version"
    system "kbn", "version"
    system "kscn", "version"
    system "kspn", "version"
    system "ksen", "version"
    system "kgen", "version"
    system "homi", "--version"
  end
end
