class McpCliProxy < Formula
  desc "Generic-executor MCP server: runs shell commands on the host PC, outside the agent sandbox"
  homepage "https://github.com/vexornp/mcp-cli-proxy"
  version "0.1.5"
  license "MIT"

  on_arm do
    url "https://github.com/vexornp/mcp-cli-proxy/releases/download/v0.1.5/mcp-cli-proxy-aarch64-apple-darwin.tar.gz"
    sha256 "ca801cecbe4db624ba9cd28994668b4a4c95740a08207390c97e7292098a486b"
  end

  def install
    bin.install "mcp-cli-proxy"
  end

  test do
    assert_match "mcp-cli-proxy", shell_output("#{bin}/mcp-cli-proxy --help")
  end
end
