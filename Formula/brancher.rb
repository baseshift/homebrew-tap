class Brancher < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/brancher-0.11.0-4454f68c2e18-darwin-arm64"
  version "0.11.0-4454f68c2e18"
  sha256 "361076482d6cfbaa7879e542cf7ea6251b56770c4239910be81059ebc531f8bd"

  depends_on "baseshift/tap/protobuf@21"
  depends_on "boost"
  depends_on "libgcrypt"
  depends_on "zstd"

  def install
    bin.install "brancher-0.11.0-4454f68c2e18-darwin-arm64" => "brancher"
  end

  test do
    assert_match "0.11.0-4454f68c2e18", shell_output("#{bin}/brancher version")
  end
end
