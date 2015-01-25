require 'spec_helper'

describe 'rspec-proxypac matchers' do
  describe '#find_proxy' do
    describe 'spec/example.pac' do
      let(:subject) { 'spec/example.pac' }
      it do
        is_expected.to find_proxy('PROXY proxy.example.org:3128')
          .for('http://www.example.com/')
      end
      it { is_expected.to find_proxy('DIRECT').for('http://www.example.org/') }
    end
  end
end
