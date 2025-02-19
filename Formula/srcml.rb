class Srcml < Formula
  desc "srcML: Conversion of source code to/from the srcML format, querying and manipulation of srcML"
  homepage "https://www.srcml.org"
  url "http://66.228.46.28/srcml-1.0.0-macOS.tar.gz"
  sha256 "153791424f7926b3cc25bf708973f8cb35e4eafb47df04f1f8eb7704be0c37d0"
  version "1.0.0"

  def install
    prefix.install Dir["usr/local/*"]
  end

  test do
    system "#{bin}/srcml", "--version"
  end
end
