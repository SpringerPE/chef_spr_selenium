describe "xvfb package"
  it "should be installed"
    if grep Ubuntu /etc/lsb-release; then
      dpkg -s xvfb
    elif [ -f /etc/centos-release ]; then
      rpm -qa | grep Xvfb
    fi
    assert equal "$?" 0

end_describe

describe "firefox package"
  it "should be installed"
    if grep Ubuntu /etc/lsb-release; then
      dpkg -s firefox && \
      which firefox
    elif [ -f /etc/centos-release ]; then
      rpm -qa | grep firefox && \
      which firefox
    fi
    assert equal "$?" 0

end_describe
