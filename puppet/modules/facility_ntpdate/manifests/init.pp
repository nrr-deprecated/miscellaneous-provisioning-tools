class facility_ntp {
	include package_ntp

	cron {
		"update system time using NTP":
			command => "/usr/sbin/ntpdate pool.ntp.org",
			user => root,
			minute => 0,
			hour => 2,
			ensure => present,
			require => Package["ntp"];
	}
}
