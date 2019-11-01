class Kubecm < Formula
  desc "Merge multiple kubeconfig"
  homepage "https://github.com/sunny0826/kubecm"
  url "https://github.com/sunny0826/kubecm/releases/download/v0.2.1/kubecm_0.2.1_Darwin_x86_64.tar.gz"
  version "v0.2.1"
  sha256 "4d5f58387c82654306d6189c119c9d704d88a309b9344339318895e2f6f92672"

  def install
    bin.install "kubecm"
  end
end
