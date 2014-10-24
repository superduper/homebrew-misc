require "formula"

class Cargo < Formula
  homepage "http://crates.io"
  url "https://github.com/rust-lang/cargo/archive/master.tar.gz"
  version "wip"
  head "https://github.com/rust-lang/cargo.git"

  depends_on "rust"
  depends_on "libgit2"
  depends_on "cmake" => :build
  depends_on "pkg-config" => :build

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "PREFIX=#{prefix}"
    system "make", "PREFIX=#{prefix}", "install"
  end
end
