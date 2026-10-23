class ProtectMcp < Formula
  desc "Fail-closed Cedar policy gate with Ed25519-signed receipts for agent tool calls"
  homepage "https://scopeblind.com"
  url "https://registry.npmjs.org/protect-mcp/-/protect-mcp-0.32.0.tgz"
  sha256 "24d9b47a9057be317625a1f6b573d5e3ca55d1cb1a496c5ffc7da132f884e112"
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
