class Kubecm < Formula
  desc "Merge multiple kubeconfig"
  homepage "https://github.com/sunny0826/kubecm"
  url "https://github.com/sunny0826/kubecm/releases/download/v0.5.0/kubecm_0.5.0_Darwin_x86_64.tar.gz"
  version "v0.5.0"
  sha256 "bb216f36676e802af728d4f8facd56fecb6eddfa7913c0368ab55a21eae574d8"

  def install
    bin.install "kubecm"
  end
end
