class Brancher < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/brancher-1.2.1-8952ff11fa1a-darwin-arm64"
  version "1.2.1"
  sha256 "fe8685ba277500766a67543ac77ee8a6cb9969c69b9ddba3fbf8dc8cf1b28ff3"

  depends_on "libgcrypt"
  depends_on "zstd"

  def install
    bin.install "brancher-1.2.1-8952ff11fa1a-darwin-arm64" => "brancher"
  end

  test do
    assert_match "1.2.1", shell_output("#{bin}/brancher version")
  end
end
