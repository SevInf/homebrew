require 'formula'

class Libebml < Formula
  url 'http://dl.matroska.org/downloads/libebml/libebml-1.2.2.tar.bz2'
  mirror 'http://www.bunkus.org/videotools/mkvtoolnix/sources/libebml-1.2.2.tar.bz2'
  homepage 'http://www.matroska.org/'
  md5 '726cc2bd1a525929ff35ff9854c0ebab'

  def install
    system 'cp -r make/linux make/darwin'
    system "cd make/darwin && make install prefix=#{prefix}"
  end
end
