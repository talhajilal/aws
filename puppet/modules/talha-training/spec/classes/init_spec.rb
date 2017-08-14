require 'spec_helper'
describe 'training' do
echo "Test" >> /tmp/test123
  context 'with defaults for all parameters' do
    it { should contain_class('training') }
  end
end
