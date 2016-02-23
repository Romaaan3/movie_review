require 'rails_helper'

describe Movie do
  it "is valid with all parametres" do
    movie = Movie.new(
      title: 'Deadpool',
      description: 'desc',
      movie_length: '123',
      director: 'dir')
    expect(movie).to be_valid
  end

  it "is invalid without a title" do
    movie = Movie.new(title: nil)
    movie.valid?
    expect(movie.errors[:title]).to include("can't be blank")
  end

  it "is invalid without a description" do
    movie = Movie.new(description: nil)
    movie.valid?
    expect(movie.errors[:description]).to include("can't be blank")
  end

  it "is invalid without a movie length" do
    movie = Movie.new(movie_length: nil)
    movie.valid?
    expect(movie.errors[:movie_length]).to include("can't be blank")
  end

  it "is invalid without a director" do
    movie = Movie.new(director: nil)
    movie.valid?
    expect(movie.errors[:director]).to include("can't be blank")
  end
end
