class Kubecm < Formula
  desc "Merge multiple kubeconfig"
  homepage "https://github.com/sunny0826/kubecm"
  url "https://github.com/sunny0826/kubecm/releases/download/v0.8.0/kubecm_0.8.0_Darwin_x86_64.tar.gz"
  version "v0.8.0"
  sha256 "aacef1e6488d8a4f43e51759801e637790239e7566a6bd7c9c2b679f2e620b85"

  def install
    bin.install "kubecm"
  end
end
