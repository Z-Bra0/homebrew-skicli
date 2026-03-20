class Skicli < Formula
  desc "Package manager for AI agent skills"
  homepage "https://github.com/Z-Bra0/Ski"
  version "0.2.0"
  license "GPL-3.0-only"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Z-Bra0/Ski/releases/download/v0.2.0/ski_0.2.0_darwin_arm64.tar.gz"
    sha256 "7b419a7eb9bf29afbacffc16317a94351b8e3dd675dfe7c3dbb0eb4b2f5a1b43"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Z-Bra0/Ski/releases/download/v0.2.0/ski_0.2.0_darwin_amd64.tar.gz"
    sha256 "1aa4edb5c2a85fbd5adac699812cba5bcc146ffd1414da4498554fb5df21b447"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Z-Bra0/Ski/releases/download/v0.2.0/ski_0.2.0_linux_arm64.tar.gz"
    sha256 "7525fc6ab6a43daef2e0e6319e2e8fb395ff62d9dc4b69d197c27207ca238b11"
  else
    url "https://github.com/Z-Bra0/Ski/releases/download/v0.2.0/ski_0.2.0_linux_amd64.tar.gz"
    sha256 "c9be49bea8ac9af4326235252b700f65e30b01b0f7e5c44845c28f111ed7218e"
  end

  def install
    bin.install "ski"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ski version").strip
  end
end