# This file was generated by GoReleaser. DO NOT EDIT.
class Dkl < Formula
  desc "dkl is the text-mode interface for docker and kubectl command."
  homepage "https://budougumi0617.github.io/"
  version "0.0.0"
  bottle :unneeded

  if OS.mac?
    url "http://github.com/budougumi0617/dkl/releases/v0.0.0/dkl_0.0.0_Darwin_x86_64.tar.gz"
    sha256 "d567ace51cee949e87ed7be41c0126fe407c5b7f3c5e91e3288981840a3e889d"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "http://github.com/budougumi0617/dkl/releases/v0.0.0/dkl_0.0.0_Linux_x86_64.tar.gz"
      sha256 "cb9117a8e1bdc93f4aa5859a77e8ce1324a3dd888a4f2822308296edd869573c"
    end
  end

  def install
    bin.install "dkl"
  end

  test do
    system "#{bin}/dkl --version"
    ...
  end
end
