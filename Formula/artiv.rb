class Artiv < Formula
  desc "A version control system to manage large files."
  homepage "https://github.com/InfuseAI/ArtiV"
  url "https://github.com/InfuseAI/ArtiV/releases/download/v0.3.0/ArtiV-v0.3.0-darwin-arm64.tar.gz"
  sha256 "09b1b4e992e399d89c0b686fdf3cfc2c0e296b45e816ba997860bbdb7b5100af"
  license "Apache-2.0"

  def install
    bin.install "art"
  end
end
