require 'spec_helper'
describe 'osx_pmset' do
  context 'with default values for all parameters' do
    it { should contain_class('osx_pmset') }
  end
end
