class Ax < Formula
  desc "macOS Accessibility Inspector CLI for UI hierarchies, attributes, and actions"
  homepage "https://github.com/watzon/ax-cli"
  url "https://github.com/watzon/ax-cli/releases/download/v0.3.0/ax-0.3.0-universal-apple-darwin.tar.gz"
  version "0.3.0"
  sha256 "ecdad87f4caea3347f2381145c973514910aac9504575aec24a9590417c8af99"
  license "MIT"

  depends_on :macos

  def install
    bin.install "ax"
  end

  test do
    assert_match "ax #{version}", shell_output("#{bin}/ax --version")
  end
end
