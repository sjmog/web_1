require 'spec_helper'

describe 'Application features' do
  it 'visits the root path' do
    response = get('/')
    expect(response.status).to eq 200
  end
end