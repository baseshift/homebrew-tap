class Brancher < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/brancher-0.10.1-5338fa21bdaf-darwin-arm64"
  version "0.10.1-5338fa21bdaf"
  sha256 "fb5432485b39f20ee1a258172809b87c710b41e47baf45f0559ad6cf63b93256"

  depends_on "baseshift/tap/protobuf@21"
  depends_on "boost"
  depends_on "libgcrypt"
  depends_on "zstd"

  def install
    bin.install "brancher-0.10.1-5338fa21bdaf-darwin-arm64" => "brancher"
  end

  test do
    assert_match "0.10.1-5338fa21bdaf", shell_output("#{bin}/brancher version")
  end
end
