class mactex::full {
	package { "MacTeX.pkg":
		provider => 'pkgdmg',
		source   => 'http://mirror.ctan.org/systems/mac/mactex/MacTeX.pkg',
	}
}
