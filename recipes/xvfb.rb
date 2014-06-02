list = case node.platform
when "ubuntu" then
  %w(
    xfonts-100dpi
    xfonts-75dpi
    xfonts-scalable
    xfonts-cyrillic
    xserver-xorg-core
    xvfb
    )
when "centos" then
  %w(
    xorg-x11-fonts-100dpi
    xorg-x11-fonts-75dpi
    xorg-x11-fonts-cyrillic
    xorg-x11-fonts-Type1
    xorg-x11-server-Xvfb
    mesa-libGL
    )
end

list.each { |pkg| package(pkg) { action :install } }

cookbook_file "/etc/init.d/xvfb" do
  owner "root"
  group "root"
  mode  "0755"
  source "etc/init.d/xvfb.sh"

  notifies(:restart, "service[xvfb]")
end

service "xvfb" do
  action [:enable, :start]
end
