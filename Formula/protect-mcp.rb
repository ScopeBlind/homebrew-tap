class ProtectMcp < Formula
  desc "Fail-closed Cedar policy gate with Ed25519-signed receipts for agent tool calls"
  homepage "https://scopeblind.com"
  url "https://registry.npmjs.org/protect-mcp/-/protect-mcp-0.13.1.tgz"
  sha256 "9d983cccba5e08e6a3801f77245e5575c348d2a3a3f71396ebf7898758d6210d"
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
