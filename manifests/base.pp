class readahead::base {
    package{readahead:
        ensure => present,
    }

    service{readahead_early:
        enable => true,
        require => Package[readahead],
    }
    service{readahead_later:
        enable => true,
        require => Package[readahead],
    }
}
