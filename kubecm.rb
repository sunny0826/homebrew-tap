class Kubecm < Formula
  desc "Merge multiple kubeconfig"
  homepage "https://github.com/sunny0826/kubecm"
  url "https://github.com/sunny0826/kubecm/releases/download/v0.7.4/kubecm_0.7.4_Darwin_x86_64.tar.gz"
  version "v0.7.4"
  sha256 "eac6840fc74d361f22dc933dc82f7a97948947a687c0d8163b1be50771c0ecf3"

  def install
    bin.install "kubecm"
  end
end
