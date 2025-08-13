class Srcml < Formula
  desc "Convert source code to and from the srcML format, querying and manipulation"
  homepage "https://www.srcml.org"
  version "1.1.0-beta"
  head "https://github.com/srcML/srcML.git", branch: "v1.1.0-beta"

  if Hardware::CPU.arm?
    url "https://github.com/srcML/srcML/releases/download/v1.1.0-beta/srcml-1.1.0-macOS-arm64.pkg"
    sha256 "ea4d0a59150d235596b61137e62066d153a1da5b59058c016d4ba27e23a0a072"
  elsif Hardware::CPU.intel?
    url "https://github.com/srcML/srcML/releases/download/v1.1.0-beta/srcml-1.1.0-macOS-x86_64.pkg"
    sha256 "2a99a9950e765c1b9b5e9835c4a5df282a35cc8ef7aae3da2dbd81987c925ff9"
  end

  depends_on :macos

  def install
    prefix.install Dir["usr/local/*"]
  end

  test do
    system bin/"srcml", "--version"
  end
end
