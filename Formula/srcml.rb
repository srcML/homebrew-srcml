class Srcml < Formula
  desc "Convert source code to and from the srcML format, querying and manipulation"
  homepage "https://www.srcml.org"
  version "1.0.0"
  head "https://github.com/srcML/srcML.git", branch: "develop"

  if Hardware::CPU.arm?
    url "http://66.228.46.28/srcml-1.0.0-macOS-arm64.tar.gz"
    sha256 "7d60df428396bf8a52c81b2ba2f5d815c76c23b7"
  elsif Hardware::CPU.intel?
    url "http://66.228.46.28/srcml-1.0.0-macOS-x86_64.tar.gz"
    sha256 "b02e73494f6ebeecb7ac3903a73d597a7fadc89e"
  end

  depends_on :macos

  def install
    prefix.install Dir["usr/local/*"]
  end

  test do
    system bin/"srcml", "--version"
  end
end
