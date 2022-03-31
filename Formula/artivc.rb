class Artivc < Formula
  desc "A version control system to manage large files."
  homepage "https://github.com/InfuseAI/ArtiVC"
  url "https://github.com/InfuseAI/ArtiVC.git",
      tag:      "v0.7.0"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    # Don't dirty the git tree
    rm_rf ".brew_home"

    system "make", "build", "VERSION=v0.7.0"
    bin.install "bin/avc"
  end
end
