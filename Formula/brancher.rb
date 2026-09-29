class Brancher < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/brancher-0.15.0-4115de441150-darwin-arm64"
  version "0.15.0"
  sha256 "b9db34c022d1034f3056cec23b65f52daaf2d30083f546c2c4d154e4e79631b8"

  depends_on "libgcrypt"
  depends_on "zstd"

  def install
    bin.install "brancher-0.15.0-4115de441150-darwin-arm64" => "brancher"
  end

  test do
    assert_match "0.15.0", shell_output("#{bin}/brancher version")
  end
end
