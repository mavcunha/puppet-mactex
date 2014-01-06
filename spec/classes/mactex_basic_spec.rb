require 'spec_helper'

describe 'mactex::basic' do
  it do
    should contain_package('MacTeX Basic').with({
      :source => 'http://mirror.ctan.org/systems/mac/mactex/mactex-basic.pkg',
      :provider => 'pkgdmg',
    })
  end
end
