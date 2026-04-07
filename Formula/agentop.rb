class Agentop < Formula
  desc "Terminal dashboard for AI coding assistant sessions"
  homepage "https://github.com/mohitmishra786/agentop"
  version "0.1.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/mohitmishra786/agentop/releases/download/v#{version}/agentop_#{version}_darwin_amd64.tar.gz"
      sha256 ""
    end
    on_arm do
      url "https://github.com/mohitmishra786/agentop/releases/download/v#{version}/agentop_#{version}_darwin_arm64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mohitmishra786/agentop/releases/download/v#{version}/agentop_#{version}_linux_amd64.tar.gz"
      sha256 ""
    end
    on_arm do
      url "https://github.com/mohitmishra786/agentop/releases/download/v#{version}/agentop_#{version}_linux_arm64.tar.gz"
      sha256 ""
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
