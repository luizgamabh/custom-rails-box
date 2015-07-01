#
# Cookbook Name:: custombox
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package "libxslt-dev" do
  package_name value_for_platform(
    [ "centos", "redhat", "suse", "fedora" ] => { "default" => "libxslt-devel" },
    "gentoo" => { "default" => "dev-libs/libxslt" },
    "default" => "libxslt1-dev"
  )
end
