require 'spec_helper'
describe 'osx_installer' do
  context 'with default values for all parameters' do
    it { should contain_class('osx_installer') }
  end
end
