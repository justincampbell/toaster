require "spec_helper"

describe Toaster do
  context "VERSION" do
    it "should be a string" do
      Toaster::VERSION.should be_kind_of String
    end
  end
end
