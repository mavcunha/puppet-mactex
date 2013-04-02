class mactex::manager::install($package) {
	exec { "Installing Package: ${package}":
		command => "/usr/texbin/tlmgr install ${package}",
		user => "root"
	}
}
