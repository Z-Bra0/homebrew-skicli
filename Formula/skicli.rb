class Skicli < Formula
  desc "Package manager for AI agent skills"
  homepage "https://github.com/Z-Bra0/Ski"
  version "0.3.1"
  license "GPL-3.0-only"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Z-Bra0/Ski/releases/download/v0.3.1/ski_0.3.1_darwin_arm64.tar.gz"
    sha256 "296fd3952b1e91d93b513427705fa2c91f9a53ee5dc47b14552437c81f7fa937"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Z-Bra0/Ski/releases/download/v0.3.1/ski_0.3.1_darwin_amd64.tar.gz"
    sha256 "aff8fd1693b6045271d413a60e2e697be000c7db21cdd7ba11b3fd4fdd2e544e"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Z-Bra0/Ski/releases/download/v0.3.1/ski_0.3.1_linux_arm64.tar.gz"
    sha256 "5324fdb8c02350f3dbda283ce9315491f93bafac6004f7c356077f0e1efe5a48"
  else
    url "https://github.com/Z-Bra0/Ski/releases/download/v0.3.1/ski_0.3.1_linux_amd64.tar.gz"
    sha256 "c4b75df5c93fab0641531ff0e7bdffbbc30929e80d5e0609dea04c6d71fe6855"
  end

  def install
    bin.install "ski"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ski version").strip
  end
end