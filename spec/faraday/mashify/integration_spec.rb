# frozen_string_literal: true

RSpec.describe 'integration test' do # rubocop:disable RSpec/DescribeClass
  before do
    stub_request(:get, 'http://www.example.com/api/me')
      .to_return(status: 200, headers: { 'Content-Type' => 'application/json' }, body: '{"name":"sue445"}')
  end

  it 'get response as Hashie::Mash' do # rubocop:disable RSpec/ExampleLength
    connection =
      Faraday.new(url: 'http://www.example.com') do |conn|
        conn.response :mashify
        conn.response :json
      end

    response = connection.get('/api/me').body
    expect(response).to be_an_instance_of Hashie::Mash
    expect(response[:name]).to eq 'sue445'
    expect(response['name']).to eq 'sue445'
    expect(response.name).to eq 'sue445'
  end
end
