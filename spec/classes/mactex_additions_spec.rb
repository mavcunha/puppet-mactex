require 'spec_helper'

describe 'mactex::additions' do
  it do
    should contain_package('MacTeX Additions').with({
      :source => 'http://mirror.ctan.org/systems/mac/mactex/mactex-additions.pkg',
      :provider => 'pkgdmg',
    })
  end
end
