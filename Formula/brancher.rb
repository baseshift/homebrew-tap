class Brancher < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/brancher-1.1.0-975c15ab52f6-darwin-arm64"
  version "1.1.0"
  sha256 "f5057fe37446cf851d2fa19bddf129e40dd6be69289a18d353ea41dabca232e9"

  depends_on "libgcrypt"
  depends_on "zstd"

  def install
    bin.install "brancher-1.1.0-975c15ab52f6-darwin-arm64" => "brancher"
  end

  test do
    assert_match "1.1.0", shell_output("#{bin}/brancher version")
  end
end
