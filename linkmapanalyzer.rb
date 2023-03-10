# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Linkmapanalyzer < Formula
  desc "Parse the linkmap file in the iOS project to facilitate the analysis of the package size occupied by each module"
  homepage "https://github.com/canhth/iOS-LinkMapAnalyzer"
  url "https://github.com/canhth/iOS-LinkMapAnalyzer/archive/refs/tags/1.0.0.tar.gz"
  sha256 "c66979c3a96c0349617dfc3d880e74ae5d3a9946e312891b8aeec85f9d48b26e"
  license "MIT"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    bin.install 'LinkMapAnalyzer'
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test LinkMapAnalyzer`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
