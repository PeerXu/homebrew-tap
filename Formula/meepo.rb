# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Meepo < Formula
  desc "Meepo help you to build your private network over Internet in easy way.
"
  homepage "https://github.com/PeerXu/meepo"
  version "0.4.3"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/PeerXu/meepo/releases/download/0.4.3/meepo_darwin_amd64.tar.gz"
    sha256 "5aa6297720886088b0c6896a6699e6074ca7103326234a3d21a72e94c32fb15e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/PeerXu/meepo/releases/download/0.4.3/meepo_darwin_arm64.tar.gz"
    sha256 "34c5b1ec4b8fb30af4aa9e701b91f10d141aed68232860f13bc31c1c6f095d45"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/PeerXu/meepo/releases/download/0.4.3/meepo_linux_amd64.tar.gz"
    sha256 "5f7aa7b8da7053bb7e19223a588e99fde7f0c073759c8d03cbc30be875bba718"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/PeerXu/meepo/releases/download/0.4.3/meepo_linux_armv6.tar.gz"
    sha256 "9bb86a38bd02f36cb2b589400f60465fcfc990eb0cfa812832aa4142bd0a6fb8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/PeerXu/meepo/releases/download/0.4.3/meepo_linux_arm64.tar.gz"
    sha256 "01f7b79c51cbb9034aea9a7020b4d37c6262f67462298f27f1a7caa8291a5b8c"
  end

  def install
    bin.install "meepo"
  end

  test do
    system "#{bin}/meepo version"
  end
end
