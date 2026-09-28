class Brancher < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/brancher-0.14.0-0b5decf3734c-darwin-arm64"
  version "0.14.0"
  sha256 "d12d70e59aabc9ba8ba10a884db9c7bf70ef50d69e45ef93e8e1d20733bfef0a"

  depends_on "libgcrypt"
  depends_on "zstd"

  def install
    bin.install "brancher-0.14.0-0b5decf3734c-darwin-arm64" => "brancher"
  end

  test do
    assert_match "0.14.0", shell_output("#{bin}/brancher version")
  end
end
