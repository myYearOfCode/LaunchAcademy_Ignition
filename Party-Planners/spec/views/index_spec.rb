require 'spec_helper'
require 'launchy'


feature 'user sees a list of parties' do
  before :each do
    Party.delete_all
    Party.create({name: 'a', description: 'a party', location: 'not at my house!'})
    Party.create({name: "Hootenanny", description: "a hoot", location: "not at my house!"})
  end

  scenario 'user sees the name of each party' do
    visit '/parties'
    expect(page).to have_content('Hootenanny')
  end

  scenario 'user sees a link' do
    visit '/parties'
    expect(page).to have_selector('a')
  end

  scenario 'user visits root path' do
    visit '/'
    expect(current_path).to eq('/parties')
  end

  scenario 'user clicks on Hootenanny' do
    visit '/parties'
    click_on 'Hootenanny'
    expect(current_path).to eq('/parties/8')
  end

  scenario 'user clicks on link to go to make a new party' do
    visit '/parties'
    click_on 'Add New Party'
    expect(current_path).to eq('/parties/new')
  end

end
