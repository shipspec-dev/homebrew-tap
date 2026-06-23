class Shipspec < Formula
  desc "Spec-to-ship workflow for AI-assisted software delivery"
  homepage "https://github.com/ewent404/ShipSpec"
  url "https://registry.npmjs.org/shipspec/-/shipspec-0.3.0.tgz"
  sha256 "3b50cdfc55910ac3095173817cb99ba5fb412caaa38f63f3af609c7bb1fd4599"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gsd --version")
  end
end
