require 'spec_helper'
describe 'osx_update' do
  context 'with default values for all parameters' do
    it { should contain_class('osx_update') }
  end
end
