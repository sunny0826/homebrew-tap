class Kubecm < Formula
  desc "Merge multiple kubeconfig"
  homepage "https://github.com/sunny0826/kubecm"
  url "https://github.com/sunny0826/kubecm/releases/download/v0.7.1/kubecm_0.7.1_Darwin_x86_64.tar.gz"
  version "v0.7.1"
  sha256 "9f87cb9193cda3daaa2a20a2310632d1050933bb9c996a26fccb1c19a0d0c2b2"

  def install
    bin.install "kubecm"
  end
end
