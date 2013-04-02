class mactex::manager::update {
	exec { "SelfUpdate":
		command => "/usr/texbin/tlmgr update --self"
	}

	exec { "GeneralUpdate":
		command => "/usr/texbin/tlmgr update --all",
		require => Exec['SelfUpdate']
	}
}
