# Public: Installs MacTeX basic
#
class mactex::basic {
  package { 'MacTeX Basic':
    provider => 'pkgdmg',
    source   => 'http://mirror.ctan.org/systems/mac/mactex/mactex-basic.pkg',
  }
}
