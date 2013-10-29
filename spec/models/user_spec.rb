require 'spec_helper'

describe User do
 it "must have username" do
  subject.should have(1).error_on(:username)
  end

  it "should save username" do
    user = User.create!(username: "joe", password: "joe")
    expect(user.username).to eq("joe")
  end

  it "should save post" do
    user = User.create!(username: "joe", password: "jon")
    post = user.posts.create(title: "test", content: "testest")
    user.posts.should include(post)
  end
end


