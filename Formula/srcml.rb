class Srcml < Formula
  desc "Convert source code to and from the srcML format, querying and manipulation"
  homepage "https://www.srcml.org"
  version "1.1.0-beta"
  head "https://github.com/srcML/srcML.git", branch: "v1.1.0-beta"

  if Hardware::CPU.arm?
    url "https://github.com/srcML/srcML/releases/download/v1.1.0-beta/srcml-1.1.0-macOS-arm64.tar.gz"
    sha256 "293f4a8d36913494ad0b8fc3bd894a3201bbf723e9977228c14462dfd8deb8d4"
  elsif Hardware::CPU.intel?
    url "https://github.com/srcML/srcML/releases/download/v1.1.0-beta/srcml-1.1.0-macOS-x86_64.tar.gz"
    sha256 "07811241428e1fc0cecdc9ac15bcdfa385f29428873ca0990652983f0e1e125c"
  end

  depends_on :macos

  def install
    prefix.install Dir["usr/local/*"]
  end

  test do
    system bin/"srcml", "--version"
  end
end
