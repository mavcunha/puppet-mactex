# Public: Installs MacTex modules
#
define mactex::manager::install {
  exec { "Installing Package: ${title}":
    path    => '/usr/bin:/usr/sbin:/bin',
    command => "/usr/texbin/tlmgr install ${title}",
    unless  => "/usr/texbin/tlmgr info ${title} | grep installed: | cut -d' ' -f4 | awk '{ exit \$0 != \"Yes\" }'",
    user    => 'root'
  }
}
