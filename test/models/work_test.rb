require "test_helper"


describe Work do
  describe "validations" do #success case
    it "Can be created with all attributes" do
      Work.create!(title: 'test title', creator: "ada", category: "album", publication_year: 1992, description: "great story!")
      # result = work.valid?
      # result.must_equal true
    end

    it "Requires a title" do #failure case test
      work = Work.new
      result = work.valid?
      result.must_equal false

      #Check that the validation we're testing
      # did actually failure
      work.errors.messages.must_include :title
    end

    it "Requires a category" do #failure case test
      work = Work.new
      result = work.valid?
      result.must_equal false

      #Check that the validation we're testing
      # did actually failure
      work.errors.messages.must_include :category
    end

    it "Requires a creator" do #failure case test
      work = Work.new
      result = work.valid?
      result.must_equal false

      #Check that the validation we're testing
      # did actually failure
      work.errors.messages.must_include :creator
    end

    it "Requires a publication_year" do #failure case test
      work = Work.new
      result = work.valid?
      result.must_equal false

      #Check that the validation we're testing
      # did actually failure
      work.errors.messages.must_include :publication_year
    end

    # it "Requires a description" do #failure case test
    #   work = Work.new
    #   result = work.valid?
    #   result.must_equal false
    #
    #   #Check that the validation we're testing
    #   # did actually failure
    #   work.errors.messages.must_include :description
    # end

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
