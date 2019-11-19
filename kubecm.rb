class Kubecm < Formula
  desc "Merge multiple kubeconfig"
  homepage "https://github.com/sunny0826/kubecm"
  url "https://github.com/sunny0826/kubecm/releases/download/v0.3.4/kubecm_0.3.4_Darwin_x86_64.tar.gz"
  version "v0.3.4"
  sha256 "027221c62c24ab7ae848ef18d20d0df4d3a89882b1d4d30dc85ad3945a17099a"

  def install
    bin.install "kubecm"
  end
end
