class McpCliProxy < Formula
  desc "Generic-executor MCP server: runs shell commands on the host PC, outside the agent sandbox"
  homepage "https://github.com/vexornp/mcp-cli-proxy"
  version "0.1.7"
  license "MIT"

  on_arm do
    url "https://github.com/vexornp/mcp-cli-proxy/releases/download/v0.1.7/mcp-cli-proxy-aarch64-apple-darwin.tar.gz"
    sha256 "7a06036c780421fd1cf1c5ed9d2424a7a8dd5ea57a66cfdd05bdb709dafe83d5"
  end

  on_intel do
    url "https://github.com/vexornp/mcp-cli-proxy/releases/download/v0.1.7/mcp-cli-proxy-x86_64-apple-darwin.tar.gz"
    sha256 "cbfdb4512882433d1b9b2aa2e0c34d05329837b3d4e9ef9027cdace2a8a4876d"
  end

  def install
    bin.install "mcp-cli-proxy"
  end

  test do
    assert_match "mcp-cli-proxy", shell_output("#{bin}/mcp-cli-proxy --help")
  end
end
