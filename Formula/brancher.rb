class Brancher < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/brancher-0.14.0-2ea02515afcc-darwin-arm64"
  version "0.14.0-2ea02515afcc"
  sha256 "24b6bc3d27db773cfc9cb45ac3ba95503d96bf720f7ee775b89b7ac0310de142"

  depends_on "baseshift/tap/protobuf@21"
  depends_on "boost"
  depends_on "libgcrypt"
  depends_on "zstd"

  def install
    bin.install "brancher-0.14.0-2ea02515afcc-darwin-arm64" => "brancher"
  end

  test do
    assert_match "0.14.0-2ea02515afcc", shell_output("#{bin}/brancher version")
  end
end
