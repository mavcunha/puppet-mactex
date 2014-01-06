# Public: Installs MacTeX full edition
#
class mactex::full {
  package { 'MacTeX Full':
    provider => 'pkgdmg',
    source   => 'http://mirror.ctan.org/systems/mac/mactex/MacTeX.pkg',
  }
}
