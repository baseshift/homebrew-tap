class Brancher < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/brancher-1.0.0-83fa2a0c3217-darwin-arm64"
  version "1.0.0"
  sha256 "acd51a696b8b8e60d350e0e6630a42ea967ab987a08c26fd200ccf1e48b119f6"

  depends_on "libgcrypt"
  depends_on "zstd"

  def install
    bin.install "brancher-1.0.0-83fa2a0c3217-darwin-arm64" => "brancher"
  end

  test do
    assert_match "1.0.0", shell_output("#{bin}/brancher version")
  end
end
