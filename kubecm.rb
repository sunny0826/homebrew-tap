class Kubecm < Formula
  desc "Merge multiple kubeconfig"
  homepage "https://github.com/sunny0826/kubecm"
  url "https://github.com/sunny0826/kubecm/releases/download/v0.5.2/kubecm_0.5.2_Darwin_x86_64.tar.gz"
  version "v0.5.2"
  sha256 "5ad8bca8805426183024d15e509fac008c0570bce59e6ad8aeea6b878b1edccc"

  def install
    bin.install "kubecm"
  end
end
