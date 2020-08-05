class Kubecm < Formula
  desc "Merge multiple kubeconfig"
  homepage "https://github.com/sunny0826/kubecm"
  url "https://github.com/sunny0826/kubecm/releases/download/v0.8.2/kubecm_0.8.2_Darwin_x86_64.tar.gz"
  version "v0.8.2"
  sha256 "00b58e46ebbe1c89eca7b368a258db917cd926198293e2c8810bf697d51bb4d0"

  def install
    bin.install "kubecm"
  end
end
