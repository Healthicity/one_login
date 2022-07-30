require 'test_helper'

class OneLogin::Api::OauthTest < Test::Unit::TestCase

  def test_get_oauth_token
    stub = stub_request(:post, "https://api.us.onelogin.com/auth/oauth2/token").
            with(:body => "{\"grant_type\":\"client_credentials\"}",
               :headers => {'Authorization'=>'client_id:abcd, client_secret:abcd'}).
            to_return(:status => 200, :body => "{}", :headers => {'Content-Type' => 'application/json'})
    OneLogin::Api::Oauth.new(oauth_token_options).get_oauth_token
    remove_request_stub(stub)
  end

  def test_revoke_oauth_token
    stub = stub_request(:post, "https://api.us.onelogin.com/auth/oauth2/revoke").
            with(:body => "{\"access_token\":\"abc\"}",
               :headers => {'Authorization'=>'client_id:abcd, client_secret:abcd'}).
            to_return(:status => 200, :body => "{}", :headers => {'Content-Type' => 'application/json'})
    OneLogin::Api::Oauth.new(oauth_token_options).revoke_token("abc")
    remove_request_stub(stub)
  end

  private

  def oauth_token_options
    {
      client_id: "abcd",
      client_secret: "abcd"
    }
  end


end
