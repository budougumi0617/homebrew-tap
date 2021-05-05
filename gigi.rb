# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gigi < Formula
  desc "Check pull request size."
  homepage "https://github.com/budougumi0617/gigi"
  version "0.0.2"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/budougumi0617/gigi/releases/download/v0.0.2/gigi_0.0.2_Darwin_x86_64.tar.gz"
    sha256 "b2de8bd6126985c28c3ad7baa1f343c834b2d6905b58aad95b7d6276f2855aaa"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/budougumi0617/gigi/releases/download/v0.0.2/gigi_0.0.2_Darwin_arm64.tar.gz"
    sha256 "8bddb536db94ddf7747d7ea81ddee3ef9b121a7fefc8a0697272f99316ebf6cc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/budougumi0617/gigi/releases/download/v0.0.2/gigi_0.0.2_Linux_x86_64.tar.gz"
    sha256 "36b1716b90f73d8b82589238abcf353a4ae1dd6355bd745a2ad91e90d06dbd03"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/budougumi0617/gigi/releases/download/v0.0.2/gigi_0.0.2_Linux_arm64.tar.gz"
    sha256 "05f53e0c3fbf2d0687e7a7a66b880161a8707c95e7ddbf296e0ee0e58558f66b"
  end

  def install
    bin.install "gigi"
  end

  test do
    system "#{bin}/gigi -h"
  end
end
