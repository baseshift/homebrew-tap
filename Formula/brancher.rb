class Brancher < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  version "0.1.0-6583b7e51c35"
  url "https://dl.baseshift.com/brancher/brancher-0.1.0-6583b7e51c35-darwin-arm64"
  sha256 "22b23c661ef2b0d23a5079e963960899b724e9ab8ea4e5a878d273cca6fe74ff"

  def install
    bin.install "brancher-0.1.0-6583b7e51c35-darwin-arm64" => "brancher"
  end

  test do
    assert_match "0.1.0-6583b7e51c35", shell_output("#{bin}/brancher version")
  end
end
