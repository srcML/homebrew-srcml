class Srcml < Formula
  desc "srcML: Convert source code to/from the srcML format, querying and manipulation"
  homepage "https://www.srcml.org"
  url "http://66.228.46.28/srcml-1.0.0-macOS-arm64.tar.gz"
  head "https://github.com/srcML/srcML.git", branch: "develop"
  sha256 "f07849b1f0d1ff2e163b06e2339989dcb52a91e0b396599cada2489c2fb12656"
  version "1.0.0"

  # Restrict installation to macOS ARM64 (Apple Silicon)
  depends_on arch: :arm64
  depends_on :macos

  def install
    prefix.install Dir["usr/local/*"]
  end

  test do
    system "#{bin}/srcml", "--version"
  end
end
