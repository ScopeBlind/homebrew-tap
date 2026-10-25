class ProtectMcp < Formula
  desc "Fail-closed Cedar policy gate with Ed25519-signed receipts for agent tool calls"
  homepage "https://scopeblind.com"
  url "https://registry.npmjs.org/protect-mcp/-/protect-mcp-0.32.4.tgz"
  sha256 "fe2e5a8288f84c8dba179059d7c2ec5b0a66c56089657c5cf59e9b197bf8c6ff"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "protect-mcp", shell_output("#{bin}/protect-mcp --help 2>&1")
  end
end
