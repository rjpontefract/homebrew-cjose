require "formula"

class Cjose < Formula
  homepage "https://github.com/cisco/cjose"
  head "https://github.com/cisco/cjose.git"

  depends_on 'pkg-config' => :build
  depends_on 'openssl'

  def install
	args = %W[
	--prefix=#{prefix}
   ]

	system "./configure", *args
	system "make install"
  end

  test do
    system "false"
  end
end
