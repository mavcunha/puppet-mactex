class mactex::basic {
      package { "mactex-basic.pkg":
      	      provider => 'pkgdmg',
	      source   => 'http://mirror.ctan.org/systems/mac/mactex/mactex-basic.pkg',
      }
}