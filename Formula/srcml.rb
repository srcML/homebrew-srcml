class Srcml < Formula
  desc "Convert source code to and from the srcML format, querying and manipulation"
  homepage "https://www.srcml.org"
  version "1.0.0"
  head "https://github.com/srcML/srcML.git", branch: "develop"

  if Hardware::CPU.arm?
    url "http://66.228.46.28/srcml-1.0.0-macOS-arm64.tar.gz"
    sha256 "e9ac9838b91cf80055489fc6b8d61572d559b78e2dd6ef4062782d8729e9efdb"
  elsif Hardware::CPU.intel?
    url "http://66.228.46.28/srcml-1.0.0-macOS-x86_64.tar.gz"
    sha256 "b1df3d9c6f29b2ff0bcdf0a9d624057066236e0b63011f2e28caf44fb0d3f961"
  end

  depends_on :macos

  def install
    prefix.install Dir["usr/local/*"]
  end

  test do
    system bin/"srcml", "--version"
  end
end
