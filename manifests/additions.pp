# Public: install MacTex additions
#
class mactex::additions {
  package { 'MacTeX Additions':
    provider => 'pkgdmg',
    source   => 'http://mirror.ctan.org/systems/mac/mactex/mactex-additions.pkg',
  }
}
