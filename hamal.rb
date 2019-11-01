class Hamal < Formula
  desc "Hamal is a tool for synchronizing images between two mirrored repositories."
  homepage "https://github.com/sunny0826/hamal"
  url "https://github.com/sunny0826/hamal/releases/download/v0.2.1/hamal_0.2.1_Darwin_x86_64.tar.gz"
  version "v0.2.1"
  sha256 "8186325975339f89ce357f4c38c90d5a0ef06b05ebd4665a386d670a9b7d9b9d"
  
  def install
    bin.install "hamal"
  end
end
