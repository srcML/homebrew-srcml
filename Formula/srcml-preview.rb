class SrcmlPreview < Formula
  desc "Convert source code to and from the srcML format, querying and manipulation (optimized preview)"
  homepage "https://www.srcml.org"
  version "1.2.0"

  # Optimized build (antlr2cpp, PGO + ThinLTO), Apple silicon only
  url "https://apps.mlcollard.net/dist/srcml-preview-1.2.0-macOS-brew-arm64.tar.gz"
  sha256 "90f6ba000ec50127a18dcdbba6152e53b620d2402a67e61a4d9b78e74b77bf44"

  depends_on arch: :arm64
  depends_on :macos

  conflicts_with "srcml", because: "both install the srcml command and libsrcml"

  def install
    prefix.install Dir["usr/local/*"]
  end

  test do
    system bin/"srcml", "--version"
    (testpath/"a.c").write "int x = 1;\n"
    assert_match "<decl_stmt>", shell_output("#{bin}/srcml #{testpath}/a.c")
  end
end
