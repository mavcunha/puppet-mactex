require 'spec_helper'

describe 'mactex::full' do
  it do
    should contain_package('MacTeX Full').with({
      :source   => 'http://mirror.ctan.org/systems/mac/mactex/MacTeX.pkg',
      :provider => 'pkgdmg',
    })
  end
end
