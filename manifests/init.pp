#
# readahead module
#
# Copyright 2008, Puzzle ITC GmbH
# Marcel Härry haerry+puppet(at)puzzle.ch
# Simon Josi josi+puppet(at)puzzle.ch
#
# This program is free software; you can redistribute 
# it and/or modify it under the terms of the GNU 
# General Public License version 3 as published by 
# the Free Software Foundation.
#

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
