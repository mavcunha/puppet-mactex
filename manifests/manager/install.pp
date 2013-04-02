define mactex::manager::install {
	exec { "Installing Package: ${package}":
		path   => "/usr/bin:/usr/sbin:/bin",
		command => "/usr/texbin/tlmgr install ${package}",
		unless => "/usr/texbin/tlmgr info achemso | grep installed: | cut -d' ' -f4 | awk '{ exit \$0 != \"Yes\" }'",
		user => "root"
	}
}
