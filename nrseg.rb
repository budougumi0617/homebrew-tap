# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nrseg < Formula
  desc "Insert function segments into any function/method for Newrelic APM."
  homepage "https://github.com/budougumi0617/nrseg"
  version "0.0.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/budougumi0617/nrseg/releases/download/v0.0.1/nrseg_0.0.1_Darwin_x86_64.tar.gz"
    sha256 "31bdf5237a2274472c5f7e95d234e35dbdb51473e04f7933eccb22afba02e79b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/budougumi0617/nrseg/releases/download/v0.0.1/nrseg_0.0.1_Linux_x86_64.tar.gz"
    sha256 "0c6a768b89a2b3a0f6bf911ecdc448e5757ce77c45e91cdbf59c35f173dc3984"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/budougumi0617/nrseg/releases/download/v0.0.1/nrseg_0.0.1_Linux_arm64.tar.gz"
    sha256 "3b6de9edcddf5e6da62a7368b1e99a99c1df14efb63de8b5149049890b106096"
  end

  def install
    bin.install "nrseg"
  end

  test do
    system "#{bin}/nrseg -h"
  end
end
