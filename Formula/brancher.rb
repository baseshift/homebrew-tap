class Brancher < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  version "0.10.0-cb796bb8a9dc"
  url "https://dl.baseshift.com/brancher/brancher-0.10.0-cb796bb8a9dc-darwin-arm64"
  sha256 "f06667ef7970b8b7806fe4efa02e618c20955112eaff822059ef5f37c1d53a2f"

  def install
    bin.install "brancher-0.10.0-cb796bb8a9dc-darwin-arm64" => "brancher"
  end

  test do
    assert_match "0.10.0-cb796bb8a9dc", shell_output("#{bin}/brancher version")
  end
end
