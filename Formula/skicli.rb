class Skicli < Formula
  desc "Package manager for AI agent skills"
  homepage "https://github.com/Z-Bra0/Ski"
  version "0.3.2"
  license "GPL-3.0-only"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Z-Bra0/Ski/releases/download/v0.3.2/ski_0.3.2_darwin_arm64.tar.gz"
    sha256 "f8479d42765cbc14290936361bcd8a0fcd30e4398ea616c9aaec114962586baf"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Z-Bra0/Ski/releases/download/v0.3.2/ski_0.3.2_darwin_amd64.tar.gz"
    sha256 "2e9dd2e1a35a3926575a8056cf4089ccf7b7abab399c2ba75b17815e48a0afaf"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Z-Bra0/Ski/releases/download/v0.3.2/ski_0.3.2_linux_arm64.tar.gz"
    sha256 "ca75e8df61c2bad71936d861aab215f9941c113f2866959be8d7377f01494e68"
  else
    url "https://github.com/Z-Bra0/Ski/releases/download/v0.3.2/ski_0.3.2_linux_amd64.tar.gz"
    sha256 "6874d27dc6599503d520b1898f4b4a6b1cfa92597f7d4cdb580b9e78719b40e9"
  end

  def install
    bin.install "ski"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ski version").strip
  end
end