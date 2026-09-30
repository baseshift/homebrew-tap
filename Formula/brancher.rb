class Brancher < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/brancher-0.17.0-6d89a9057d37-darwin-arm64"
  version "0.17.0"
  sha256 "5570fc7cedae97446dc39a25f7d218ad0094c346b3d97bb8bba8aee2467c9287"

  depends_on "libgcrypt"
  depends_on "zstd"

  def install
    bin.install "brancher-0.17.0-6d89a9057d37-darwin-arm64" => "brancher"
  end

  test do
    assert_match "0.17.0", shell_output("#{bin}/brancher version")
  end
end
