class CmdKeeper < Formula
  desc "A CLI tool to save, manage, and search frequently used commands"
  homepage "https://github.com/taro33333/cmd-keeper"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taro33333/cmd-keeper/releases/download/v1.2.0/cmd-keeper-darwin-arm64"
      sha256 "2b7334583c18876f695cbd4c3ea0230af6ee2ab877346179fcafe404ad037e1c"

      def install
        bin.install "cmd-keeper-darwin-arm64" => "cmd-keeper"
      end
    end

    on_intel do
      url "https://github.com/taro33333/cmd-keeper/releases/download/v1.2.0/cmd-keeper-darwin-amd64"
      sha256 "806a1108b3c7b030f36e07e5a2d8d50ac3a234bb6083d1da51f446e08709ad84"

      def install
        bin.install "cmd-keeper-darwin-amd64" => "cmd-keeper"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/taro33333/cmd-keeper/releases/download/v1.2.0/cmd-keeper-linux-amd64"
      sha256 "7796cd0cb1b89cad1d91c11ff2e31f143299d3eb83afbafb8c9654642d8b0474"

      def install
        bin.install "cmd-keeper-linux-amd64" => "cmd-keeper"
      end
    end
  end

  test do
    system "#{bin}/cmd-keeper", "--version"
  end
end
