class Brancher < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  version "0.9.0-5e29ac2c2662"
  url "https://dl.baseshift.com/brancher/brancher-0.9.0-5e29ac2c2662-darwin-arm64"
  sha256 "45b7e3b579bbd42ea14523b28679627b7dff5a29065dc716e33a48b1b3cba021"

  def install
    bin.install "brancher-0.9.0-5e29ac2c2662-darwin-arm64" => "brancher"
  end

  test do
    assert_match "0.9.0-5e29ac2c2662", shell_output("#{bin}/brancher version")
  end
end
