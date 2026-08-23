class McpCliProxy < Formula
  desc "Generic-executor MCP server: runs shell commands on the host PC, outside the agent sandbox"
  homepage "https://github.com/vexornp/mcp-cli-proxy"
  version "0.1.6"
  license "MIT"

  on_arm do
    url "https://github.com/vexornp/mcp-cli-proxy/releases/download/v0.1.6/mcp-cli-proxy-aarch64-apple-darwin.tar.gz"
    sha256 "ba0964f6753c647395f1f7a76b0d1c6ff033d49128ae340cf73b618cb617269c"
  end

  def install
    bin.install "mcp-cli-proxy"
  end

  test do
    assert_match "mcp-cli-proxy", shell_output("#{bin}/mcp-cli-proxy --help")
  end
end
