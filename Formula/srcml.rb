class Srcml < Formula
  desc "Convert source code to and from the srcML format, querying and manipulation"
  homepage "https://www.srcml.org"
  version "1.0.0"
  head "https://github.com/srcML/srcML.git", branch: "develop"

  if Hardware::CPU.arm?
    url "http://66.228.46.28/srcml-1.0.0-macOS-arm64.tar.gz"
    sha256 "49411fede70263e2cc5f2f4c35170b925eed4a82f79a16207a87214646c090ca"
  elsif Hardware::CPU.intel?
    url "http://66.228.46.28/srcml-1.0.0-macOS-x86_64.tar.gz"
    sha256 "b40f780cae20cc600c60f74d439d1a5088751fc3d2c832c93fc6e50d84bbc5e0"
  end

  depends_on :macos

  def install
    prefix.install Dir["usr/local/*"]
  end

  test do
    system bin/"srcml", "--version"
  end
end
