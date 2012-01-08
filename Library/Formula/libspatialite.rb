require 'formula'

class Libspatialite < Formula
  url 'http://www.gaia-gis.it/gaia-sins/libspatialite-amalgamation-3.0.1.tar.gz'
  homepage 'https://www.gaia-gis.it/fossil/libspatialite/index'
  md5 'df7f0f714c2de1dc2791ddef6e8eaba5'

  depends_on 'proj'
  depends_on 'geos'
  depends_on 'freexl'

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make"
    system "make install"
  end
end
