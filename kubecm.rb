class Kubecm < Formula
  desc "Merge multiple kubeconfig"
  homepage "https://github.com/sunny0826/kubecm"
  url "https://github.com/sunny0826/kubecm/releases/download/v0.7.2/kubecm_0.7.2_Darwin_x86_64.tar.gz"
  version "v0.7.2"
  sha256 "692f425751adaf0bc4bda1ffbd1454b35ac58a2d4a9a3439333fd0a453e60b6d"

  def install
    bin.install "kubecm"
  end
end
