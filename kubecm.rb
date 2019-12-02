class Kubecm < Formula
  desc "Merge multiple kubeconfig"
  homepage "https://github.com/sunny0826/kubecm"
  url "https://github.com/sunny0826/kubecm/releases/download/v0.6.1/kubecm_0.6.1_Darwin_x86_64.tar.gz"
  version "v0.6.1"
  sha256 "9aaf89def0a119f0d78d1df8ffb0f04cbd5136b6693c43097d0ce715dc1a2b82"

  def install
    bin.install "kubecm"
  end
end
