cask "srcml" do
  version "1.0.0"
  sha256 "9f7017c0573091509bb0156a37cc6ee78c2e08e2250ca425307c17c0417bb7b0"

  # URL can be an https:// link or a file:// link
  url "http://66.228.46.28/srcml-1.0.0-macOS.pkg"
  name "srcML"
  desc "Tool for exploring the structure of source code"
  homepage "https://www.srcml.org"

  # The .pkg file name inside the downloaded artifact
  pkg "srcml-1.0.0-macos.pkg"

  # If the package has a specific package identifier, specify it here:
  uninstall pkgutil: "com.srcML"
end
