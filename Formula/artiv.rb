class Artiv < Formula
  desc "A version control system to manage large files."
  homepage "https://github.com/InfuseAI/ArtiV"
  url "https://github.com/InfuseAI/ArtiV.git",
      tag:      "v0.5.1"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    # Don't dirty the git tree
    rm_rf ".brew_home"

    system "make", "build", "VERSION=v0.5.1"
    bin.install "bin/art"
  end
end
