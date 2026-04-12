class Agentop < Formula
  desc "Terminal dashboard for AI coding assistant sessions — token usage, cost, and cache efficiency"
  homepage "https://github.com/mohitmishra786/agentop"
  version "0.1.1"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/mohitmishra786/agentop/releases/download/v#{version}/agentop_#{version}_darwin_x86_64.tar.gz"
      sha256 "ce073f50ec2de921a2b4fb9e4496305313e7c324d3bb21cbd9a2f1ecf1eb9555"
    end
    on_arm do
      url "https://github.com/mohitmishra786/agentop/releases/download/v#{version}/agentop_#{version}_darwin_arm64.tar.gz"
      sha256 "22a6c3d81f7928e685aabe9aab66ed9e9af18855859ab5741de6c0f4829fa928"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mohitmishra786/agentop/releases/download/v#{version}/agentop_#{version}_linux_x86_64.tar.gz"
      sha256 "d824156e4757732a59e4b435ec7fbc72dc874851060d89a7d5bcdb103d25626d"
    end
    on_arm do
      url "https://github.com/mohitmishra786/agentop/releases/download/v#{version}/agentop_#{version}_linux_arm64.tar.gz"
      sha256 "d3402c0df8ac649ae1a94b0e26121a97f37cdb96e1660506d91d89349c16a154"
    end
  end

  def install
    bin.install "agentop"
    man1.install "agentop.1"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentop --version")
  end
end
