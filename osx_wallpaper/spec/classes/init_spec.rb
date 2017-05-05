require 'spec_helper'
describe 'osx_wallpaper' do
  context 'with default values for all parameters' do
    it { should contain_class('osx_wallpaper') }
  end
end
