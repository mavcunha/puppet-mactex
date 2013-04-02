class mactex::basic {
      package { "MacTex":
      	      provider => 'pkgdmg',
	      source   => 'http://mirror.ctan.org/systems/mac/mactex/mactex-basic.pkg',
      }
}