#######################################
# readahead module - disable.pp
# Puzzle ITC - haerry+puppet(at)puzzle.ch
# GPLv3
#######################################

# remove readahead
class readahead::disable inherits readahead::base {
    Package[readahead]{
        ensure => absent,
    }
    Service[readahead_early]{
        enable => false,
    }
    Service[readahead_later]{
        enable => false,
    }
}
