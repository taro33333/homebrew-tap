class CmdKeeper < Formula
  desc "A CLI tool to save, manage, and search frequently used commands"
  homepage "https://github.com/taro33333/cmd-keeper"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taro33333/cmd-keeper/releases/download/v1.1.0/cmd-keeper-darwin-arm64"
      sha256 "0b460e45b13c937b441dc99b7c5696f18ca242dcb6dd5ae74b6ab4b11d3ea344"

      def install
        bin.install "cmd-keeper-darwin-arm64" => "cmd-keeper"
      end
    end

    on_intel do
      url "https://github.com/taro33333/cmd-keeper/releases/download/v1.1.0/cmd-keeper-darwin-amd64"
      sha256 "d34830818c0c9ce96b0f3507d5060f1d37416353b06f1424023bfa87d741fcd1"

      def install
        bin.install "cmd-keeper-darwin-amd64" => "cmd-keeper"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/taro33333/cmd-keeper/releases/download/v1.1.0/cmd-keeper-linux-amd64"
      sha256 "5da8a9f1fe3df6244052c9f399d4626855004bfb88c64daa79d01deddd33176f"

      def install
        bin.install "cmd-keeper-linux-amd64" => "cmd-keeper"
      end
    end
  end

  test do
    system "#{bin}/cmd-keeper", "--version"
  end
end
