class Skicli < Formula
  desc "Package manager for AI agent skills"
  homepage "https://github.com/Z-Bra0/Ski"
  version "0.2.1"
  license "GPL-3.0-only"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Z-Bra0/Ski/releases/download/v0.2.1/ski_0.2.1_darwin_arm64.tar.gz"
    sha256 "59dcaad7dd37c3fd61a7d7d3f8e9da70da5739808797ce59a0bb040c30332b5a"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Z-Bra0/Ski/releases/download/v0.2.1/ski_0.2.1_darwin_amd64.tar.gz"
    sha256 "2be194ce48446fbb03a3c7698ae60a69a802b92b47c04936c63df2767b931369"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Z-Bra0/Ski/releases/download/v0.2.1/ski_0.2.1_linux_arm64.tar.gz"
    sha256 "0323cd226d3bc75ae980f9eff911c88160295cbd69c273fa854436b2f1db8040"
  else
    url "https://github.com/Z-Bra0/Ski/releases/download/v0.2.1/ski_0.2.1_linux_amd64.tar.gz"
    sha256 "af0eb957fcc6ba16fd15ed36af03134c3963ed1526b964dc0ee9a9cbdda461be"
  end

  def install
    bin.install "ski"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ski version").strip
  end
end