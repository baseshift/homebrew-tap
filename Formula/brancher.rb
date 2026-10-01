class Brancher < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/brancher-0.19.0-d455e0e20e30-darwin-arm64"
  version "0.19.0"
  sha256 "d509e1a9017087aa32abd2a9d107f2de9a3bd71926482ffbb81807898d8ebc84"

  depends_on "libgcrypt"
  depends_on "zstd"

  def install
    bin.install "brancher-0.19.0-d455e0e20e30-darwin-arm64" => "brancher"
  end

  test do
    assert_match "0.19.0", shell_output("#{bin}/brancher version")
  end
end
