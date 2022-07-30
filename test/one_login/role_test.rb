
require 'test_helper'

class OneLogin::Api::RoleTest < Test::Unit::TestCase

  def test_get_roles
    stub = stub_request(:get, "https://api.us.onelogin.com/api/1/roles").
            with(:headers => {'Authorization'=>'bearer:abcd'}).
            to_return(:status => 200, :body => "{}", :headers => {'Content-Type' => 'application/json'})
    OneLogin::Api::Role.new(access_token).get_roles
    remove_request_stub(stub)
  end

  private

  def access_token
    {
      access_token: "abcd"
    }
  end


end
