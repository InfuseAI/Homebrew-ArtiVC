class Artiv < Formula
  desc "A version control system to manage large files."
  homepage "https://github.com/InfuseAI/ArtiV"
  url "https://github.com/InfuseAI/ArtiV.git",
      tag:      "v0.3.0"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "make", "build", "VERSION=v0.3.0"
    bin.install "bin/art"
  end
end
