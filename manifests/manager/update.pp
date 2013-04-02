class mactex::manager::update {
	exec { "SelfUpdate":
		command => "/usr/texbin/tlmgr update --self"
	}

	exec { "GeneralUpdate":
		command => "/usr/texbin/tlmgr update --all",
		requires => Exec["SelfUpdate"]
	}
}
