# This file is updated automatically by GoReleaser on each release.
# Do not edit by hand.
class Qfex < Formula
  desc "CLI for the QFEX perpetual futures exchange"
  homepage "https://github.com/QFEX-org/cli"
  version "0.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/QFEX-org/cli/releases/download/cli%2Fv#{version}/qfex_v#{version}_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/QFEX-org/cli/releases/download/cli%2Fv#{version}/qfex_v#{version}_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/QFEX-org/cli/releases/download/cli%2Fv#{version}/qfex_v#{version}_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/QFEX-org/cli/releases/download/cli%2Fv#{version}/qfex_v#{version}_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "qfex"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/qfex version")
  end
end
