class site_timezone {
	include package_tzdata

	file {
		"/etc/localtime":
			source => "file:///usr/share/zoneinfo/America/Chicago",
			require => Package["tzdata"];
	}
}
