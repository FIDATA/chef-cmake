#
# Cookbook:: cmake
# Recipe:: _package
#

package "cmake" do
  not_if { platform_family?('windows') }
end

cmake_version = node["cmake"]["version"]

chocolatey_package 'cmake.install' do
  options "--version=#{cmake_version} --installargs=\"ALLUSERS=1 ADD_CMAKE_TO_PATH=System\""
  only_if { platform_family?('windows') }
end
