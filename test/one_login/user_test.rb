require 'test_helper'

class OneLogin::Api::UserTest < Test::Unit::TestCase

  def test_get_users
    stub = stub_request(:get, "https://api.us.onelogin.com/api/1/users").
            with(:headers => {'Authorization'=>'bearer:abcd'}).
            to_return(:status => 200, :body => "{}", :headers => {'Content-Type' => 'application/json'})
    OneLogin::Api::User.new(access_token).get_users
    remove_request_stub(stub)
  end

  private

  def access_token
    {
      access_token: "abcd"
    }
  end


end
