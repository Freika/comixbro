require 'spec_helper'

describe 'Comix', type: feature do
  before(:each) do
    create :publisher
    create :genre
  end

  it 'should create comix with pages' do
    visit new_admin_comix_path
    fill_in 'Title', with: 'Deadpool'
    fill_in 'Year', with: '2014'
    fill_in 'Language', with: 'ru'
    select 'Marvel', from: 'Publisher'
    check 'Detective'
    (1..3).map{ |t| File.join(Rails.root, "/spec/support/images/#{t}.png") }.each do |path|
      attach_file('Pages', path)
    end

    click_on 'Create Comix'
    expect(page).to have_content('Deadpool')
  end

end
