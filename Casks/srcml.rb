cask "srcml" do
  version "1.0.0-2"
  sha256 "dc86540be44f5653b4e71baae0e4db0a16ee82fe001448a19fcae1ab9374e9f3"

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
