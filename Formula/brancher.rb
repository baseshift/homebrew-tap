class Brancher < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/brancher-0.16.0-d950d54456ae-darwin-arm64"
  version "0.16.0"
  sha256 "7d6c6311a6a0dfbb4691bc53fc445038e535762d813b18c5b6c7d659d4631200"

  depends_on "libgcrypt"
  depends_on "zstd"

  def install
    bin.install "brancher-0.16.0-d950d54456ae-darwin-arm64" => "brancher"
  end

  test do
    assert_match "0.16.0", shell_output("#{bin}/brancher version")
  end
end
