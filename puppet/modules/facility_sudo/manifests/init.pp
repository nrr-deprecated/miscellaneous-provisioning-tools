class facility_sudo {
	include package_sudo

	file {
		"/etc/sudoers":
			owner => root,
			group => root,
			mode => 0440,
			source => "puppet:///modules/sudo/sudoers",
			require => Package["sudo"],
			ensure => file;
	}
}
