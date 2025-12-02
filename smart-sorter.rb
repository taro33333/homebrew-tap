class SmartSorter < Formula
  desc "A CLI tool to automatically organize files by extension"
  homepage "https://github.com/taro33333/smart-sorter"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/taro33333/smart-sorter/releases/download/v0.1.2/smart-sorter-darwin-arm64"
      sha256 "5d2114743a6dc767c68a89f7aba63e222b8a8d6c04ba0d078aafa79ea992e593"

      def install
        bin.install "smart-sorter-darwin-arm64" => "smart-sorter"
      end
    end

    on_intel do
      url "https://github.com/taro33333/smart-sorter/releases/download/v0.1.2/smart-sorter-darwin-amd64"
      sha256 "f0254f32bba19385c3c7c6c2035b45fa4e377bf5298dccaa3c41b23daadb2daf"

      def install
        bin.install "smart-sorter-darwin-amd64" => "smart-sorter"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/taro33333/smart-sorter/releases/download/v0.1.2/smart-sorter-linux-amd64"
      sha256 "e71aea35f87b54202129245162b2fb88c906bf53eb3df6243b4e92e550fbb850"

      def install
        bin.install "smart-sorter-linux-amd64" => "smart-sorter"
      end
    end
  end

  test do
    system "#{bin}/smart-sorter", "--version"
  end
end
