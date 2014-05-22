require 'spec_helper'

describe "df_ntp::default" do 
	let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe)}
	it "installs package ntp" do 
		expect(chef_run).to install_package("ntp")
	end
end