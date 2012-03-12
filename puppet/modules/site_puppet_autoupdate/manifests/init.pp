class site_puppet_autoupdate {
	cron {
		"apply puppet manifests":
			command => "/command/svc -o /service/puppet_client",
			user => "root",
			minute => inline_template("<%= hostname.hash.abs % 60 %>"),
			ensure => present;
	}
}
