class Kubecm < Formula
  desc "Merge multiple kubeconfig"
  homepage "https://github.com/sunny0826/kubecm"
  url "https://github.com/sunny0826/kubecm/releases/download/v0.7.3-rc1/kubecm_0.7.3-rc1_Darwin_x86_64.tar.gz"
  version "v0.7.3-rc1"
  sha256 "e34fce7a04a3e7668575266b1b3efec0c54ad5bf65bb8cf5935e24ac72ca3ed9"

  def install
    bin.install "kubecm"
  end
end
