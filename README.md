Selenium Cookbook
=================

This cookbook installs the require packages for running selenium scripts. 

It is splited in two parts:

 * `spr_selenium::default` : Installs browsers, xvfb
 * `spr_selenium::grid` : Setups a grid installation

Supported browsers
==================

 * Firefox from package

License (BSD)
=============
See the LICENSE file for legal information.

Credits
=======

Based on:
 * https://github.com/Quoin/selenium-grid-cookbook
 * https://github.com/locomote-cookbooks/xvfb


TODO
====

 * Chromium is being installed from a remote repo. We should clone it somewhere