define mactex::manager::install {
	exec { "Installing Package: ${name}":
		path   => "/usr/bin:/usr/sbin:/bin",
		command => "/usr/texbin/tlmgr install ${name}",
		unless => "/usr/texbin/tlmgr info ${name} | grep installed: | cut -d' ' -f4 | awk '{ exit \$0 != \"Yes\" }'",
		user => "root"
	}
}
