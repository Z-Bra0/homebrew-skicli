class Skicli < Formula
  desc "Package manager for AI agent skills"
  homepage "https://github.com/Z-Bra0/Ski"
  version "0.3.0"
  license "GPL-3.0-only"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Z-Bra0/Ski/releases/download/v0.3.0/ski_0.3.0_darwin_arm64.tar.gz"
    sha256 "0e6415e0ac982f3eb0e9cbe74609734cccdf7598f77fb6925a2e9faf8020b609"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Z-Bra0/Ski/releases/download/v0.3.0/ski_0.3.0_darwin_amd64.tar.gz"
    sha256 "0718f641fc0ed7488ff26718ad62a8617b2331d09335ebc877c67f57e54cefe6"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Z-Bra0/Ski/releases/download/v0.3.0/ski_0.3.0_linux_arm64.tar.gz"
    sha256 "8a0e1f7076585deb7a1cf90f3945034b103432f29b775364fa5ee2e9411ec95e"
  else
    url "https://github.com/Z-Bra0/Ski/releases/download/v0.3.0/ski_0.3.0_linux_amd64.tar.gz"
    sha256 "e432b9fee09cac88b6b561f0f9ed4f0018c06f510b0525b280a57580cd57bd1d"
  end

  def install
    bin.install "ski"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ski version").strip
  end
end