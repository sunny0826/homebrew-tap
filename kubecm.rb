class Kubecm < Formula
  desc "Merge multiple kubeconfig"
  homepage "https://github.com/sunny0826/kubecm"
  url "https://github.com/sunny0826/kubecm/releases/download/v0.4.1/kubecm_0.4.1_Darwin_x86_64.tar.gz"
  version "v0.4.1"
  sha256 "5e12cbc13994d5b6deaf08db198ce04ba332d0b20d06b20462e072e5be8d4fc9"

  def install
    bin.install "kubecm"
  end
end
