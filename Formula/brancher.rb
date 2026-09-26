class Brancher < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  version "0.2.0-44dabf3426c0"
  url "https://dl.baseshift.com/brancher/brancher-0.2.0-44dabf3426c0-darwin-arm64"
  sha256 "1660baa079f4ab621b9e037beedc728046c6d96f604cfc5c3f7a2f23859e5329"

  def install
    bin.install "brancher-0.2.0-44dabf3426c0-darwin-arm64" => "brancher"
  end

  test do
    assert_match "0.2.0-44dabf3426c0", shell_output("#{bin}/brancher version")
  end
end
