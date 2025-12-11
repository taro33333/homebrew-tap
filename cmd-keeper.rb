class CmdKeeper < Formula
  desc "A CLI tool to save, manage, and search frequently used commands"
  homepage "https://github.com/taro33333/cmd-keeper"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taro33333/cmd-keeper/releases/download/v1.0.0/cmd-keeper-darwin-arm64"
      sha256 "2ad603fdffeaba3b429c4a2378e0f66e088aa2fe61af62a82d2d43d3e0281f66"

      def install
        bin.install "cmd-keeper-darwin-arm64" => "cmd-keeper"
      end
    end

    on_intel do
      url "https://github.com/taro33333/cmd-keeper/releases/download/v1.0.0/cmd-keeper-darwin-amd64"
      sha256 "b13a88280bb5d6816f3f88d9fc8caff4cf009b420845bba8e9dcd54756c531dd"

      def install
        bin.install "cmd-keeper-darwin-amd64" => "cmd-keeper"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/taro33333/cmd-keeper/releases/download/v1.0.0/cmd-keeper-linux-amd64"
      sha256 "d3bc0753e62f46b3650c5e1f5e53f3c98b61b5776e56508a5274d119538a1608"

      def install
        bin.install "cmd-keeper-linux-amd64" => "cmd-keeper"
      end
    end
  end

  test do
    system "#{bin}/cmd-keeper", "--version"
  end
end
