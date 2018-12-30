# require 'rails_helper'

# RSpec.describe Question, type: :model do
#   let(:question) { Question.create!(title: "New Question Title", body: "New Question Body")}

#   describe "attribute" do
#     it "has title and body attribute" do 
#       expect(question).to have_attributes(title: "New Question Title", body:"New Question Body")
#     end
#   end
# end

require 'rails_helper'

RSpec.describe Question, type: :model do
  context "attribute" do
    let(:question){Question.new(title: "New Question Title", body:"New Question Body",resolved: false)}

    it "should respond to title" do 
      expect(question).to respond_to(:title)
    end

    it "should respond to body" do 
      expect(question).to respond_to(:body)
    end

    it "should respond to resolved" do
      expect(question).to respond_to(:resolved)
    end
  end
end