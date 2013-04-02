# MacTex Puppet Module for Boxen

This package gives the ability to install the different versions of MacTex as well 
as implementing functionality for the TexLive manager. 

[![Build Status](https://travis-ci.org/Omegaice/puppet-mactex.png)](https://travis-ci.org/Omegaice/puppet-mactex)

## Usage

Full Package:
```puppet
include mactex::full
```

Basic Package with additions:
```puppet
include mactex::basic
include mactex::additions
```

Manager functionality:
```puppet
include mactex::manager::update
mactex::manager::install {
  ["amsmath", "graphicx"]
}
```

## Required Puppet Modules

* `boxen`

## Development

Write code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.
