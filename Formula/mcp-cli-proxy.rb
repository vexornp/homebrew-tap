class McpCliProxy < Formula
  desc "Generic-executor MCP server: runs shell commands on the host PC, outside the agent sandbox"
  homepage "https://github.com/vexornp/mcp-cli-proxy"
  version "0.1.3"
  license "MIT"

  on_arm do
    url "https://github.com/vexornp/mcp-cli-proxy/releases/download/v0.1.3/mcp-cli-proxy-aarch64-apple-darwin.tar.gz"
    sha256 "353a564edf74edf1485db43a695b5626bb8e2e8f849c4f284142f396a94c1f75"
  end

  def install
    bin.install "mcp-cli-proxy"
  end

  test do
    assert_match "mcp-cli-proxy", shell_output("#{bin}/mcp-cli-proxy --help")
  end
end
