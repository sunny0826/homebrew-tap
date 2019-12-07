class Kubecm < Formula
  desc "Merge multiple kubeconfig"
  homepage "https://github.com/sunny0826/kubecm"
  url "https://github.com/sunny0826/kubecm/releases/download/v0.6.7/kubecm_0.6.7_Darwin_x86_64.tar.gz"
  version "v0.6.7"
  sha256 "09a5d13baee29c632ce034a6d485a8eef2b8cb22c1ea94f39958c9362575c339"

  def install
    bin.install "kubecm"
  end
end
