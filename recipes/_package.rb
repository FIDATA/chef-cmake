#
# Cookbook:: cmake
# Recipe:: _package
#

package "cmake" do
  not_if { platform_family?('windows') }
end

cmake_version = node["cmake"]["version"]

windows_package "CMake #{cmake_version}, a cross-platform, open-source build system" do
  source "http://www.cmake.org/files/v#{cmake_version[/^\d\.\d/, 0]}/cmake-#{cmake_version}-win32-x86.exe"
  only_if { platform_family?('windows') }
end

env 'PATH' do 
  value 'C:\Program Files (x86)\CMake\bin'
  delim ';'
  action :modify
  only_if { platform_family?('windows') }
end
