class Kubecm < Formula
  desc "Merge multiple kubeconfig"
  homepage "https://github.com/sunny0826/kubecm"
  url "https://github.com/sunny0826/kubecm/releases/download/v0.6.2/kubecm_0.6.2_Darwin_x86_64.tar.gz"
  version "v0.6.2"
  sha256 "22c982fe37aaf56b9f3ce025961ac8fe2d4345714c48fe181feea03abe8ea1b4"

  def install
    bin.install "kubecm"
  end
end
