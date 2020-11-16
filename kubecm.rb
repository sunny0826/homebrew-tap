class Kubecm < Formula
  desc "Merge multiple kubeconfig"
  homepage "https://github.com/sunny0826/kubecm"
  url "https://github.com/sunny0826/kubecm/releases/download/v0.10.1/kubecm_0.10.1_Darwin_x86_64.tar.gz"
  version "v0.10.1"
  sha256 "f362fd8064cd58283f12a96fa679d3ad5ea91b3851eaf70b8efaab64ce6c1156"

  def install
    bin.install "kubecm"
  end
end
