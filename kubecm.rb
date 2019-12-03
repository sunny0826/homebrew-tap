class Kubecm < Formula
  desc "Merge multiple kubeconfig"
  homepage "https://github.com/sunny0826/kubecm"
  url "https://github.com/sunny0826/kubecm/releases/download/v0.6.3/kubecm_0.6.3_Darwin_x86_64.tar.gz"
  version "v0.6.3"
  sha256 "f03c0c8c7c8a53b8f3ba7332131568edc69547356d79c6ab75aaae5d14bdd227"

  def install
    bin.install "kubecm"
  end
end
