class ProtectMcp < Formula
  desc "Fail-closed Cedar policy gate with Ed25519-signed receipts for agent tool calls"
  homepage "https://scopeblind.com"
  url "https://registry.npmjs.org/protect-mcp/-/protect-mcp-0.32.2.tgz"
  sha256 "a3fed25529d8324a1c477ab080bf8e215870a8b3dc3b8fe6d10c91ff60b9ad17"
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
