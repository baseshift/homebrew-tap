class Brancher < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/brancher-0.12.0-ecfabf47052c-darwin-arm64"
  version "0.12.0-ecfabf47052c"
  sha256 "8dec3f0b45011465e72507ea3a4043f1d46e3f9b521044a848c50cac5e9d8885"

  depends_on "baseshift/tap/protobuf@21"
  depends_on "boost"
  depends_on "libgcrypt"
  depends_on "zstd"

  def install
    bin.install "brancher-0.12.0-ecfabf47052c-darwin-arm64" => "brancher"
  end

  test do
    assert_match "0.12.0-ecfabf47052c", shell_output("#{bin}/brancher version")
  end
end
