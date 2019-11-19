class Kubecm < Formula
  desc "Merge multiple kubeconfig"
  homepage "https://github.com/sunny0826/kubecm"
  url "https://github.com/sunny0826/kubecm/releases/download/v0.3.3/kubecm_0.3.3_Darwin_x86_64.tar.gz"
  version "v0.3.3"
  sha256 "aac52da7aad97e4ffb6c245d7dafac366e9439edae4804505ab371a637e8ddc7"

  def install
    bin.install "kubecm"
  end
end
