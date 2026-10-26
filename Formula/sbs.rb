class Sbs < Formula
  desc "Swap Supabase CLI accounts and projects from the terminal"
  homepage "https://github.com/zxcvbinz/supabase-swap"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zxcvbinz/supabase-swap/releases/download/v0.2.0/sbs-0.2.0-darwin-arm64.tar.gz"
      sha256 "8c0ca8e693ecf78a778a5b16e547c661345918ae318ee20b67ab1e8970584ad8"
    end
    on_intel do
      url "https://github.com/zxcvbinz/supabase-swap/releases/download/v0.2.0/sbs-0.2.0-darwin-x64.tar.gz"
      sha256 "0e537693b0e86900e4fc28193243501d44a2fbab44e83f31b847e572d9157b7a"
    end
  end

  def install
    bin.install "sbs"
  end

  def caveats
    <<~EOS
      sbs drives Google Chrome at runtime: Google Chrome must be installed.
      The Supabase CLI is recommended:
        brew install supabase/tap/supabase
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sbs --version")
  end
end
