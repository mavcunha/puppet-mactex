require 'spec_helper'

describe 'mactex::manager::install' do
  let(:title) { 'my_package' }
  it do
    should contain_exec('Installing Package: my_package').with({
      :path => '/usr/bin:/usr/sbin:/bin',
      :command => '/usr/texbin/tlmgr install my_package',
      :unless => "/usr/texbin/tlmgr info my_package | grep installed: | cut -d' ' -f4 | awk '{ exit \$0 != \"Yes\" }'",
      :user   => 'root',
    }) 
  end
end
