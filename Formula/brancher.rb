class Brancher < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  version "0.5.0-594099d5ca0e"
  url "https://dl.baseshift.com/brancher/brancher-0.5.0-594099d5ca0e-darwin-arm64"
  sha256 "5cf3a7e720404a6bc011559b43e0f434df0052615165587d6179ed9bd2695466"

  def install
    bin.install "brancher-0.5.0-594099d5ca0e-darwin-arm64" => "brancher"
  end

  test do
    assert_match "0.5.0-594099d5ca0e", shell_output("#{bin}/brancher version")
  end
end
