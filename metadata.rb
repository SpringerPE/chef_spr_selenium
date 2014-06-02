name             'spr_selenium_grid'
maintainer       'Springer Platform Engineering'
maintainer_email 'platform-engineering@springer.com'
license          'All rights reserved'
description      'Installs/Configures Selenium'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.1'

supports 'debian'
supports 'ubuntu'

depends 'spr_xvfb', '~> 0.3.0'
