class Kubecm < Formula
  desc "Merge multiple kubeconfig"
  homepage "https://github.com/sunny0826/kubecm"
  url "https://github.com/sunny0826/kubecm/releases/download/v0.6.4/kubecm_0.6.4_Darwin_x86_64.tar.gz"
  version "v0.6.4"
  sha256 "2b37af7668e2644e44aa37cb675e906232405db1f80a9c7d9ee9c551567a7147"

  def install
    bin.install "kubecm"
  end
end
