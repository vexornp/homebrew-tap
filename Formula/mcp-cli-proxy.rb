class McpCliProxy < Formula
  desc "Generic-executor MCP server: runs shell commands on the host PC, outside the agent sandbox"
  homepage "https://github.com/vexornp/mcp-cli-proxy"
  version "0.1.8"
  license "MIT"

  on_arm do
    url "https://github.com/vexornp/mcp-cli-proxy/releases/download/v0.1.8/mcp-cli-proxy-aarch64-apple-darwin.tar.gz"
    sha256 "a69d33400c5f2d09b68f8217016897d5ff4ec24bc87d5e38a6ef0634014d65f4"
  end

  on_intel do
    url "https://github.com/vexornp/mcp-cli-proxy/releases/download/v0.1.8/mcp-cli-proxy-x86_64-apple-darwin.tar.gz"
    sha256 "6a1927a76d6c354ef156c45e627fb260c2f1e84f10cf288ae33ddb6ff0e73b70"
  end

  def install
    bin.install "mcp-cli-proxy"
  end

  test do
    assert_match "mcp-cli-proxy", shell_output("#{bin}/mcp-cli-proxy --help")
  end
end
