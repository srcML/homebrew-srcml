class Srcml < Formula
  desc "Convert source code to and from the srcML format, querying and manipulation"
  homepage "https://www.srcml.org"
  version "1.1.0"

  # Use special package name to monitor installs
  if Hardware::CPU.arm?
    url "https://github.com/srcML/srcML/releases/download/v1.1.0/srcml-1.1.0-macOS-brew-arm64.tar.gz"
    sha256 "38e67facd9292b4a06fee0e7f6a4269a3218d0ccfabf1cb5c6ccadd57e36abc3"
  elsif Hardware::CPU.intel?
    url "https://github.com/srcML/srcML/releases/download/v1.1.0/srcml-1.1.0-macOS-brew-x86_64.tar.gz"
    sha256 "7fa89298a60738edfe61179d0dcc57051c381ba53d917d5f5c69a9f8e964dca2"
  end

  depends_on :macos

  def install
    prefix.install Dir["usr/local/*"]
  end

  test do
    system bin/"srcml", "--version"
  end
end
