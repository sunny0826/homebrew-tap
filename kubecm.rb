class Kubecm < Formula
  desc "Merge multiple kubeconfig"
  homepage "https://github.com/sunny0826/kubecm"
  url "https://github.com/sunny0826/kubecm/releases/download/v0.10.0/kubecm_0.10.0_Darwin_x86_64.tar.gz"
  version "v0.10.0"
  sha256 "0b26e1db4e4906270c83c6f9b52d8383c5de5b12a75252943284b4c99e8d9458"

  def install
    bin.install "kubecm"
  end
end
