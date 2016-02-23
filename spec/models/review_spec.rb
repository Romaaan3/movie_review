require 'rails_helper'

describe Review do
  it "is valid with rating and comment" do
    review = Review.new(
      rating: 4,
      comment: "Nice",
      user_id: 1)
  end

  it "is invalid without rating" do
    review = Review.new(rating: nil)
    review.valid?
    expect(review.errors[:rating]).to include("can't be blank")
  end

  it "is invalid without comment" do
    review = Review.new(comment: nil)
    review.valid?
    expect(review.errors[:comment]).to include("can't be blank")
  end

end
