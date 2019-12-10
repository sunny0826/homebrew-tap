class Kubecm < Formula
  desc "Merge multiple kubeconfig"
  homepage "https://github.com/sunny0826/kubecm"
  url "https://github.com/sunny0826/kubecm/releases/download/v0.6.8/kubecm_0.6.8_Darwin_x86_64.tar.gz"
  version "v0.6.8"
  sha256 "51fa257d474d2d51b5668f9da75458130d686d01cc6f16a0fda0f43089129ab2"

  def install
    bin.install "kubecm"
  end
end
