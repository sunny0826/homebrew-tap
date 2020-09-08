class Kubecm < Formula
  desc "Merge multiple kubeconfig"
  homepage "https://github.com/sunny0826/kubecm"
  url "https://github.com/sunny0826/kubecm/releases/download/v0.9.0/kubecm_0.9.0_Darwin_x86_64.tar.gz"
  version "v0.9.0"
  sha256 "0faf1b0239eea7b9f71bfab38cadb750d5d523be1afff0d9c68bf7e95baa33bd"

  def install
    bin.install "kubecm"
  end
end
