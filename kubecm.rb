class Kubecm < Formula
  desc "Merge multiple kubeconfig"
  homepage "https://github.com/sunny0826/kubecm"
  url "https://github.com/sunny0826/kubecm/releases/download/v0.8.3/kubecm_0.8.3_Darwin_x86_64.tar.gz"
  version "v0.8.3"
  sha256 "4e49c7d2c55ffa765a97ff08293796553dd7efb3ca45de496e68688c8d4ace29"

  def install
    bin.install "kubecm"
  end
end
