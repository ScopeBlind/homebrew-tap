class ProtectMcp < Formula
  desc "Fail-closed Cedar policy gate with Ed25519-signed receipts for agent tool calls"
  homepage "https://scopeblind.com"
  url "https://registry.npmjs.org/protect-mcp/-/protect-mcp-0.32.1.tgz"
  sha256 "445fc990984035a52af2e7e0b6114e631dd78ccf86922d19a549daacf66c361d"
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
