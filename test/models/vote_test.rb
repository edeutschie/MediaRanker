require "test_helper"

describe Vote do
  describe "validations" do #success case
    it "Can be created with all attributes" do

      a_work = Work.create(category: 'test category', title: 'test title', creator: 'test creator', publication_year: 1978)
      a_user = User.create(name: 'test name')
      a_vote = Vote.create!(work: a_work, user: a_user)
      # result = work.valid?
      # result.must_equal true
    end

    it "Requires attributes" do #failure case test
      vote = Vote.new
      result = vote.valid?
      result.must_equal false
      #Check that the validation we're testing
      # did actually failure
      vote.errors.messages.must_include :user_id
    end

##holding this here until I decide what other validations I want to add to the model - these are unique tests brought over from Dan's books project
#     it "Must have a unique title" do
#       a = Author.create!(name: "test author")
#       # Add a book to the B to be a duplicate with
#       book1 = Book.create!(title: 'duplicate title', author: a)
#
#       #Create a duplicate book
#       book2 = Book.new(title: 'duplicate title', author: a)
#
#       result  = book2.valid?
#       result.must_equal false
#
#       book2.errors.messages.must_include :title
#     end
#   end
#
#   describe Book do
#     describe 'relations' do
#       it 'can set the author through "author"' do
#         # Create two models
#         book = Book.new(title: "test book")
#
#         # Make the models relate to one another
#         book.author = authors(:metz)
#
#         # author_id should have changed accordingly
#         book.author_id.must_equal authors(:metz).id
#       end
#
#       it 'can set the author through "author_id"' do
#         # Create two models
#         author = Author.create!(name: "test author")
#         book = Book.new(title: "test book")
#
#         # Make the models relate to one another
#         book.author_id = authors(:metz).id
#
#         # author should have changed accordingly
#         book.author.must_equal authors(:metz)  #"authors" calls out the file authors.yml
#       end
#     end
  end
end
