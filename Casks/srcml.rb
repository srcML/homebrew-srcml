cask "srcml" do
  version "1.0.0"
  sha256 "06afc13b01ae9c86cd93b7b73bd9af9e43173b32fd84df87a94812fbc246ce66"

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
