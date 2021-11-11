# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kubecm < Formula
  desc "Merge multiple kubeconfig"
  homepage "https://github.com/sunny0826/kubecm"
  version "0.16.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sunny0826/kubecm/releases/download/v0.16.0/kubecm_0.16.0_Darwin_x86_64.tar.gz"
      sha256 "3be3b2594fb78ec753a6c514beb2e050757044ee11362c275901859fee6f03b7"

      def install
        bin.install "kubecm"

        # Install bash completion
        output = Utils.safe_popen_read("#{bin}/kubecm", "completion", "bash")
        (bash_completion/"kubecm").write output

        # Install zsh completion
        output = Utils.safe_popen_read("#{bin}/kubecm", "completion", "zsh")
        (zsh_completion/"_kubecm").write output
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sunny0826/kubecm/releases/download/v0.16.0/kubecm_0.16.0_Darwin_arm64.tar.gz"
      sha256 "489e835dc29c1c72971bf623f5356c7c776f83c7292a0a983d5e6f4e1d8b96dd"

      def install
        bin.install "kubecm"

        # Install bash completion
        output = Utils.safe_popen_read("#{bin}/kubecm", "completion", "bash")
        (bash_completion/"kubecm").write output

        # Install zsh completion
        output = Utils.safe_popen_read("#{bin}/kubecm", "completion", "zsh")
        (zsh_completion/"_kubecm").write output
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sunny0826/kubecm/releases/download/v0.16.0/kubecm_0.16.0_Linux_x86_64.tar.gz"
      sha256 "bb6c6910e427b527c36f9b930b94bd620fe55c5d838ae4cf1193fa5a642cc86a"

      def install
        bin.install "kubecm"

        # Install bash completion
        output = Utils.safe_popen_read("#{bin}/kubecm", "completion", "bash")
        (bash_completion/"kubecm").write output

        # Install zsh completion
        output = Utils.safe_popen_read("#{bin}/kubecm", "completion", "zsh")
        (zsh_completion/"_kubecm").write output
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sunny0826/kubecm/releases/download/v0.16.0/kubecm_0.16.0_Linux_arm64.tar.gz"
      sha256 "69895b8fdf85a99ab124211f1289c1722466618a23ef18019356c7c484a056ca"

      def install
        bin.install "kubecm"

        # Install bash completion
        output = Utils.safe_popen_read("#{bin}/kubecm", "completion", "bash")
        (bash_completion/"kubecm").write output

        # Install zsh completion
        output = Utils.safe_popen_read("#{bin}/kubecm", "completion", "zsh")
        (zsh_completion/"_kubecm").write output
      end
    end
  end

  depends_on "git"

  test do
    system "#{bin}/kubecm version"
  end
end
