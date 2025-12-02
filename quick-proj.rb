class QuickProj < Formula
  desc "A fast project launcher with fuzzy search for developers"
  homepage "https://github.com/taro33333/quick-proj"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taro33333/quick-proj/releases/download/v0.1.0/quick-proj-darwin-arm64"
      sha256 "bf85d5b0d4fc0b9c04a64251a49136bf18fd5d1e84fc69061baf7c1180523448"

      def install
        bin.install "quick-proj-darwin-arm64" => "quick-proj"
      end
    end

    on_intel do
      url "https://github.com/taro33333/quick-proj/releases/download/v0.1.0/quick-proj-darwin-amd64"
      sha256 "19664f05c22fca0ff2d515012eac0635cf238859119f9d5f4fe42d09d4968b96"

      def install
        bin.install "quick-proj-darwin-amd64" => "quick-proj"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/taro33333/quick-proj/releases/download/v0.1.0/quick-proj-linux-amd64"
      sha256 "d1f7b27f62e5ebabe6b57bea5886a7b83c77a2e52c82e5e90c00334d5d017fc6"

      def install
        bin.install "quick-proj-linux-amd64" => "quick-proj"
      end
    end
  end

  test do
    system "#{bin}/quick-proj", "--version"
  end
end
