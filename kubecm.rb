class Kubecm < Formula
  desc "Merge multiple kubeconfig"
  homepage "https://github.com/sunny0826/kubecm"
  url "https://github.com/sunny0826/kubecm/releases/download/v0.7.0/kubecm_0.7.0_Darwin_x86_64.tar.gz"
  version "v0.7.0"
  sha256 "9e893484c0e1801384737dc57090a732a965c633a389a3533e9c6287ade68395"

  def install
    bin.install "kubecm"
  end
end
