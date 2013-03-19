require "spec_helper"

describe Event do
  describe "#mailer_action" do
    it "finds the first matching category" do
      Event.new(category: ["hello#world", "x#y"]).mailer_action.should == "hello#world"
    end

    it "is nil with no mailer action category" do
      Event.new(category: ["hello"]).mailer_action.should be_nil
    end

    it "is nil with no categories" do
      Event.new(category: nil).mailer_action.should be_nil
    end
  end
end