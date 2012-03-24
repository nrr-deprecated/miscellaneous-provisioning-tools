class facility_resolver {
	file {
		"/etc/resolv.conf":
			owner => "root",
			group => "root",
			mode => 644,
			source => "puppet:///modules/resolver/resolv.conf";
	}
}
