class Mdmend < Formula
  desc "Fast, zero-dependency Markdown linter and fixer"
  homepage "https://github.com/mohitmishra786/mdmend"
  version "1.0.0"
  license "MIT"
  head "https://github.com/mohitmishra786/mdmend.git", branch: "main"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/mohitmishra786/mdmend/releases/download/v#{version}/mdmend_#{version}_darwin_amd64.tar.gz"
      sha256 "12c088686d04f25bc5008c1d2655146f006b6f2a353ccba0876166045168c86b"
    end
    on_arm do
      url "https://github.com/mohitmishra786/mdmend/releases/download/v#{version}/mdmend_#{version}_darwin_arm64.tar.gz"
      sha256 "ce354126df34e0356961d838224798b644f572c5d3aad617615fc31f96422188"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mohitmishra786/mdmend/releases/download/v#{version}/mdmend_#{version}_linux_amd64.tar.gz"
      sha256 "4e5d645631c805eb8cb5d6cca02d721f332f507e93473b4abcea13da531fc4d8"
    end
    on_arm do
      url "https://github.com/mohitmishra786/mdmend/releases/download/v#{version}/mdmend_#{version}_linux_arm64.tar.gz"
      sha256 "163c0fcbc35c3414a86689468936b82eedb858906baec0f3d38ec815090b7125"
    end
  end

  def install
    bin.install "mdmend"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdmend --version")
    
    (testpath/"test.md").write <<~MARKDOWN
      # Test Document   
      This has trailing spaces    
    MARKDOWN
    
    output = shell_output("#{bin}/mdmend lint test.md", 1)
    assert_match "MD009", output
  end
end
