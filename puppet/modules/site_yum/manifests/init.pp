class site_yum {
	yumrepo {
		"epel":
			descr => "Extra Packages for Enterprise Linux 6 - \$basearch",
			mirrorlist => "http://mirrors.fedoraproject.org/mirrorlist?repo=epel-6&arch=\$basearch",
			failovermethod => "priority",
			gpgcheck => "0",
			enabled => "1";
	}
}
