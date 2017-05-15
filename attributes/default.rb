#
# Cookbook:: cmake
# Attributes:: default
#

# `package`, `source`, or `binary`
default["cmake"]["install_method"] = "package"
# TODO: make this use the "LATEST", like `binary`
default["cmake"]["version"] = "3.2.3"
