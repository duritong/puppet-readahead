#######################################
# readahead module
# Puzzle ITC - haerry+puppet(at)puzzle.ch
# GPLv3
#######################################


# modules_dir { "readahead": }
class readahead {
    include readahead::base
}

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
