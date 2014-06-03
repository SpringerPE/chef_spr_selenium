name             'spr_selenium'
maintainer       'Springer Platform Engineering'
maintainer_email 'platform-engineering@springer.com'
license          'All rights reserved'
description      'Installs/Configures Selenium dependencies (firefox, chrome, xvfb) and grid'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.2'

depends 'yum', '~> 3.0.6'

supports 'debian'
supports 'ubuntu'

