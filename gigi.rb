# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gigi < Formula
  desc "Check pull request size."
  homepage "https://github.com/budougumi0617/gigi"
  version "0.0.11"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/budougumi0617/gigi/releases/download/v0.0.11/gigi_0.0.11_Darwin_x86_64.tar.gz"
    sha256 "e2a21875d87b7a3e6c745fed3979f8874cf60145c275755c6d3980b9ce0fae70"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/budougumi0617/gigi/releases/download/v0.0.11/gigi_0.0.11_Darwin_arm64.tar.gz"
    sha256 "95c02449f51533b69042a01f58f4902d334ef3bc9e9d98f00a05cd016bf4ef38"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/budougumi0617/gigi/releases/download/v0.0.11/gigi_0.0.11_Linux_x86_64.tar.gz"
    sha256 "5b253ec4b898d22659daab68ee59007de3dc25993554525ea45339d75d77637e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/budougumi0617/gigi/releases/download/v0.0.11/gigi_0.0.11_Linux_arm64.tar.gz"
    sha256 "a426d7e182b4a6ebf6296035be22bef66bbe04e10c3199dbc8090aa2a563c27d"
  end

  def install
    bin.install "gigi"
  end

  test do
    system "#{bin}/gigi -h"
  end
end
