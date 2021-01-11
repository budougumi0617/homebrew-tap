# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nrseg < Formula
  desc "Insert function segments into any function/method for Newrelic APM."
  homepage "https://github.com/budougumi0617/nrseg"
  version "0.0.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/budougumi0617/nrseg/releases/download/v0.0.2/nrseg_0.0.2_Darwin_x86_64.tar.gz"
    sha256 "313fc43ce0dfa9a7d91d2d6a061ccf7bd11784c43d54621c901c5384eaabcc08"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/budougumi0617/nrseg/releases/download/v0.0.2/nrseg_0.0.2_Linux_x86_64.tar.gz"
    sha256 "ba3c83ebedf2bdec82306998c424869b8a9a729e1cd048b3a488eb352f7c5089"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/budougumi0617/nrseg/releases/download/v0.0.2/nrseg_0.0.2_Linux_arm64.tar.gz"
    sha256 "9ee41c0304f77bc34bf91a0edae371ca01a070c349a2fcb5186ab8865f713bc4"
  end

  def install
    bin.install "nrseg"
  end

  test do
    system "#{bin}/nrseg -h"
  end
end
