class Brancher < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/brancher-0.18.0-ed88d522397a-darwin-arm64"
  version "0.18.0"
  sha256 "8312a75182c81a615d00d24cd923a0c8492b763f76504de7987c1ed2150d41b3"

  depends_on "libgcrypt"
  depends_on "zstd"

  def install
    bin.install "brancher-0.18.0-ed88d522397a-darwin-arm64" => "brancher"
  end

  test do
    assert_match "0.18.0", shell_output("#{bin}/brancher version")
  end
end
