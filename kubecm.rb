class Kubecm < Formula
  desc "Merge multiple kubeconfig"
  homepage "https://github.com/sunny0826/kubecm"
  url "https://github.com/sunny0826/kubecm/releases/download/v0.6.5/kubecm_0.6.5_Darwin_x86_64.tar.gz"
  version "v0.6.5"
  sha256 "8fdfe4a7dc64083278241fb1d669a3576b34a0bd46fed8e4e223e9ccc0a404e1"

  def install
    bin.install "kubecm"
  end
end
