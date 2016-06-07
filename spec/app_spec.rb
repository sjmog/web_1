require 'spec_helper'

describe 'Application features' do
  it 'visits the root path' do
    response = get('/')
    expect(response.status).to eq 200
  end

  it 'visits another page on button click' do
    # setup gets the root page
    get('/')
    # exercise clicks the button

    # verify checks that we are on the new page
    expect()
  end
end