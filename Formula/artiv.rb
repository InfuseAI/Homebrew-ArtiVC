class Artiv < Formula
  desc "A version control system to manage large files."
  homepage "https://github.com/InfuseAI/ArtiV"
  url "https://github.com/InfuseAI/ArtiV/releases/download/v0.3.0/ArtiV-v0.3.0-darwin-amd64.tar.gz"
  sha256 "e276167b40ca4d98ba9fb95a48b393ad408c5a2ffb163bf8b24d83248f482271"
  license "Apache-2.0"

  def install
    bin.install "art"
  end
end
