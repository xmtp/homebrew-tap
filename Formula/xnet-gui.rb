class XnetGui < Formula
  desc "GUI test orchestrator for the XMTP network"
  homepage "https://github.com/xmtp/libxmtp"
  url "https://github.com/xmtp/libxmtp.git",
      branch: "push-mtruypwzqklu",
      revision: "1df8f8fc739d6934904367d316bc5235a56388b1"
  version "1.9.0"
  license "MIT"

  depends_on "rust" => :build
  depends_on "pkg-config" => :build
  depends_on "openssl@3"
  depends_on "sqlite"
  depends_on "sqlcipher"
  depends_on "zlib"
  depends_on "zstd"
  depends_on :macos # gpui requires macOS (Metal backend)

  def install
    system "cargo", "build",
           "--release",
           "-p", "xnet-gui",
           "--features", "gpui/runtime_shaders"

    bin.install "target/release/xnet-gui"
  end

  test do
    assert_predicate bin/"xnet-gui", :executable?
  end
end
