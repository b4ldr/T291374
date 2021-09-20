require 'voxpupuli/test/spec_helper'
test_on = { supported_os: [ 'operatingsystem' => 'Debian', 'operatingsystemrelease' => ['9','10']]}
describe 'example::rspec_define' do
  on_supported_os(test_on).each do |os, facts|
    let(:facts) { facts }
    let(:title) { "test-#{os}" }
    context os do
      context 'test' do
        it { is_expected.to compile }
        it { is_expected.to contain_file('/tmp/T291374').with_content(/#{facts[:os]['distro']['codename']}/) }
      end
    end
  end
end
