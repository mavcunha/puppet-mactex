class mactex::manager::update {
	exec { "SelfUpdate":
		command => "/usr/texbin/tlmgr update --self",
		user => "root"
	}

	exec { "GeneralUpdate":
		command => "/usr/texbin/tlmgr update --all",
		user => "root",
		require => Exec['SelfUpdate']
	}
}
