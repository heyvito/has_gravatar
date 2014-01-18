require 'spec_helper'

describe 'Model' do 
  it 'should contain VERSION' do
    HasGravatar::VERSION.should_not be_nil
  end
  
  it 'should respond to email_gravatar method' do
    User.first.should respond_to :email_gravatar
  end
  
  it 'should return a valid gravatar url for the given email address' do
    # Hash calculated by md5.cz
    User.first.email_gravatar.should eq 'http://gravatar.com/avatar/23463b99b62a72f26ed677cc556c44e8'
  end
  
  it 'should support https gravatars' do
    User.first.email_gravatar(secure: true).should start_with 'https://secure.gravatar'
  end
  
  it 'should support default images' do
    User.first.email_gravatar(default_avatar: 'http://example.com/public/default_gravatar.png').should include 'example.com'
  end
  
  it 'should support gravatar size' do
    User.first.email_gravatar(size: 128).should include '?s=128'
  end
end