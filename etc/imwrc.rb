#-*- mode: ruby -*-
#
# h2. etc/imwrc -- default site-wide imw configuration file
#
# == About
#
# This file contains the site-wide configuration settings for this
# installation of the Infinite Monkeywrench.  Settings here override
# the defaults in <tt>lib/imw/utils/config.rb</tt> (see the
# documentation for that file for more detail on the variables that
# can be configured here) but will in turn be overwritten by settings
# in the <tt>~/.imwrc</tt> file in each user's directory (though the
# location of this file can be customized).
#
# At the present moment, all settings are stored as plain Ruby files
# (though they may lack the <tt>.rb</tt> extension).  As the IMW
# develops, these will be replaced by YAML files which will be parsed
# by <tt>lib/imw/utils/config.rb</tt>.
#
# Author::    (Philip flip Kromer, Dhruv Bansal) for Infinite Monkeywrench Project (mailto:coders@infochimps.org)
# Copyright:: Copyright (c) 2008 infochimps.org
# License::   GPL 3.0
# Website::   http://infinitemonkeywrench.org/
# 
module IMW
  @@paths = {
    :home      => ENV['HOME'],
    :imw_root  => File.expand_path(File.join(File.dirname(__FILE__), '..')),

    # Data processing scripts
    :scripts_root => [:home, 'ics', 'pool'],

    # the imw library
    :imw_bin   => [:imw_root, 'bin'],
    :imw_etc   => [:imw_root, 'etc'],
    :imw_lib   => [:imw_root, 'lib'],

    # Data
    :data_root => [:home,      'data'],
    :ripd_root => [:data_root, 'ripd'],
    :rawd_root => [:data_root, 'rawd'],
    :temp_root => [:data_root, 'temp'],
    :fixd_root => [:data_root, 'fixd'],
    :pkgd_root => [:data_root, 'pkgd'],
    :log_root  => [:data_root, 'log'],

  }
  @@paths[:site_root] = [RAILS_ROOT] if defined?(RAILS_ROOT)

end

# puts "#{File.basename(__FILE__)}: You spend three hours configuring the settings on your Monkeywrench only to realize that you've missed your opportunity to put it to use." # at bottom
