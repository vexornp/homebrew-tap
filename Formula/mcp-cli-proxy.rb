class McpCliProxy < Formula
  desc "Generic-executor MCP server: runs shell commands on the host PC, outside the agent sandbox"
  homepage "https://github.com/vexornp/mcp-cli-proxy"
  version "0.1.2"
  license "MIT"

  on_arm do
    url "https://github.com/vexornp/mcp-cli-proxy/releases/download/v0.1.2/mcp-cli-proxy-aarch64-apple-darwin.tar.gz"
    sha256 "062038185b94f5f3e3d0c00e1ce9d7d8bda9898efb53403f743ee73b07310202"
  end

  def install
    bin.install "mcp-cli-proxy"
  end

  test do
    assert_match "mcp-cli-proxy", shell_output("#{bin}/mcp-cli-proxy --help")
  end
end
