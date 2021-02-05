# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kubecm < Formula
  desc "Merge multiple kubeconfig"
  homepage "https://github.com/sunny0826/kubecm"
  version "0.15.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/sunny0826/kubecm/releases/download/v0.15.1/kubecm_0.15.1_Darwin_x86_64.tar.gz"
    sha256 "04fe5e5519995efe6962a6271085101b497a428796350099409c0c156881fb91"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sunny0826/kubecm/releases/download/v0.15.1/kubecm_0.15.1_Linux_x86_64.tar.gz"
    sha256 "6b9e24295fd9aa4c7fb61da653532d19590f8baa96df7b104942564c3397e7f9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/sunny0826/kubecm/releases/download/v0.15.1/kubecm_0.15.1_Linux_arm64.tar.gz"
    sha256 "a8edebb73a62db5f9861674f16c9338db6b48ee43be94d4458aea1ef62357e16"
  end

  depends_on "git"

  def install
    bin.install "kubecm"

    # Install bash completion
    output = Utils.safe_popen_read("#{bin}/kubecm", "completion", "bash")
    (bash_completion/"kubecm").write output

    # Install zsh completion
    output = Utils.safe_popen_read("#{bin}/kubecm", "completion", "zsh")
    (zsh_completion/"_kubecm").write output
  end

  test do
    system "#{bin}/kubecm version"
  end
end
