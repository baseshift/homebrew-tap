class Brancher < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/brancher-0.11.0-8b6c115c0094-darwin-arm64"
  version "0.11.0-8b6c115c0094"
  sha256 "d6734eb6c8287c0e735951f9013792164ec65eccba83163033a746dacd302a27"

  depends_on "baseshift/tap/protobuf@21"
  depends_on "boost"
  depends_on "libgcrypt"
  depends_on "zstd"

  def install
    bin.install "brancher-0.11.0-8b6c115c0094-darwin-arm64" => "brancher"
  end

  test do
    assert_match "0.11.0-8b6c115c0094", shell_output("#{bin}/brancher version")
  end
end
