class CmdKeeper < Formula
  desc "A CLI tool to save, manage, and search frequently used commands"
  homepage "https://github.com/taro33333/cmd-keeper"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taro33333/cmd-keeper/releases/download/v0.1.1/cmd-keeper-darwin-arm64"
      sha256 "31b25e287ef47217c793683e3f08147a62aa3e0ac124b6d0a1b88a53397bd5dc"

      def install
        bin.install "cmd-keeper-darwin-arm64" => "cmd-keeper"
      end
    end

    on_intel do
      url "https://github.com/taro33333/cmd-keeper/releases/download/v0.1.1/cmd-keeper-darwin-amd64"
      sha256 "5c46e19e64f104b03c6c63e1f710cb5d10289d6f8d2e48778e6a412c6eec0964"

      def install
        bin.install "cmd-keeper-darwin-amd64" => "cmd-keeper"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/taro33333/cmd-keeper/releases/download/v0.1.1/cmd-keeper-linux-amd64"
      sha256 "60a2f31c01e0b9bfba75903273be1b7bade25b190ed3da62d18d3fceccb4ba92"

      def install
        bin.install "cmd-keeper-linux-amd64" => "cmd-keeper"
      end
    end
  end

  test do
    system "#{bin}/cmd-keeper", "--version"
  end
end
