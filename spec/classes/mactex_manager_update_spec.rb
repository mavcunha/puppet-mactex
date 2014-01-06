require 'spec_helper'

describe 'mactex::manager::update' do
  it do
    should contain_exec('SelfUpdate').with({
      :command => '/usr/texbin/tlmgr update --self',
      :user    => 'root',
    })
  end
  it do
    should contain_exec('GeneralUpdate').with({
      :command => '/usr/texbin/tlmgr update --all',
      :user    => 'root',
    }).that_requires('Exec[SelfUpdate]')
   
  end
end
