class Brancher < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/brancher-0.13.0-4ea2037f1049-darwin-arm64"
  version "0.13.0-4ea2037f1049"
  sha256 "9c5b05d2543b4a1182626ab5ce736872d931322872f4abc88c4513193f39d771"

  depends_on "baseshift/tap/protobuf@21"
  depends_on "boost"
  depends_on "libgcrypt"
  depends_on "zstd"

  def install
    bin.install "brancher-0.13.0-4ea2037f1049-darwin-arm64" => "brancher"
  end

  test do
    assert_match "0.13.0-4ea2037f1049", shell_output("#{bin}/brancher version")
  end
end
