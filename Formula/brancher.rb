class Brancher < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  version "0.4.0-e588d283e206"
  url "https://dl.baseshift.com/brancher/brancher-0.4.0-e588d283e206-darwin-arm64"
  sha256 "74308393dec591a47cfb0d757b0353bce92f845b456c4061270417246e2d1f1b"

  def install
    bin.install "brancher-0.4.0-e588d283e206-darwin-arm64" => "brancher"
  end

  test do
    assert_match "0.4.0-e588d283e206", shell_output("#{bin}/brancher version")
  end
end
