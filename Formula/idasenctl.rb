class Idasenctl < Formula
  desc "Command line tool for IKEA Idasen desk"
  homepage "https://github.com/samueltorres/idasenctl"
  version "0.0.1-alpha"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/samueltorres/idasenctl/releases/download/v0.0.1-alpha/idasenctl_0.0.1-alpha_darwin_arm64.tar.gz"
      sha256 "9c5b11448a80db8b8724ed5f31eb2b2243500304f792415f1709f4dbdec0508b"
    else
      url "https://github.com/samueltorres/idasenctl/releases/download/v0.0.1-alpha/idasenctl_0.0.1-alpha_darwin_amd64.tar.gz"
      sha256 "571e03ec0e888b030c4d835e1d482c2d58d8306772ba5cf881df0726aa7a8150"
    end
  end

  on_linux do
    url "https://github.com/samueltorres/idasenctl/releases/download/v0.0.1-alpha/idasenctl_0.0.1-alpha_linux_amd64.tar.gz"
    sha256 "24222d24d1944cf931832d5daa8066704151297c30d443104b67f37cf1272b38"
  end

  def install
    bin.install "idasenctl"
    prefix.install "README.md", "LICENSE"
  end

  test do
    system "#{bin}/idasenctl", "--help"
  end
end
