class mactex::additions {
	package { "mactex-additions.pkg":
		provider => 'pkgdmg',
		source   => 'http://mirror.ctan.org/systems/mac/mactex/mactex-additions.pkg',
	}
}
