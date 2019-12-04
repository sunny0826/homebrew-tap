class Kubecm < Formula
  desc "Merge multiple kubeconfig"
  homepage "https://github.com/sunny0826/kubecm"
  url "https://github.com/sunny0826/kubecm/releases/download/v0.6.6/kubecm_0.6.6_Darwin_x86_64.tar.gz"
  version "v0.6.6"
  sha256 "b83fdac5e370f75d4130f141b4b7dac9e0ead559fec523794ef94d8558d61d0d"

  def install
    bin.install "kubecm"
  end
end
