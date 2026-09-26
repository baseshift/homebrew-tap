class Brancher < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  version "0.1.0-6583b7e51c35"
  url "https://dl.baseshift.com/brancher/brancher-0.1.0-6583b7e51c35-darwin-arm64"
  sha256 "73c032755f5c009173ecb6e4e3984d7f252a44750ff557433c305a41a300ce2e"

  def install
    bin.install "brancher-0.1.0-6583b7e51c35-darwin-arm64" => "brancher"
  end

  test do
    assert_match "0.1.0-6583b7e51c35", shell_output("#{bin}/brancher version")
  end
end
