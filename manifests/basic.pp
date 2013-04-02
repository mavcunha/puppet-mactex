class mactex::basic {
      package { "MacTex":
      	      provider => 'pkg',
	      source   => 'http://mirror.ctan.org/systems/mac/mactex/mactex-basic.pkg',
      }
}