class Post < ApplicationRecord

  belongs_to :user, foreign_key: :author_id
  belongs_to :cocktail
  has_many :post_flavors
  has_many :flavors, through: :post_flavors
  has_many :likes, dependent: :destroy
  # has_many :users, through: :likes
  accepts_nested_attributes_for :post_flavors
  # acts_as_votable
  mount_uploader :image, ImageUploader
  validates :image, presence: true
  #validate :different_flavors?

  def different_flavors?
    errors.add(:post_flavors, "Keywords cannot be the same") unless self.post_flavors[0].flavor.keyword != self.post_flavors[1].flavor.keyword
  end

  def self.filter(search_by, search_term)
    if search_term.empty?
      return Post.all
    else
      case search_by
        when 'Cocktail'
          cocktail = Cocktail.find_by(name: search_term)
          return cocktail.posts
        when 'Flavor'
          flavor = Flavor.find_by(keyword: search_term.downcase)
          return flavor.posts
      end
    end


  end

  def self.organize(order_by)
    case order_by
      when 'Newest Posts'
        Post.all.sort_by { |post| post.created_at }.reverse
      when 'Oldest Posts'
        Post.all.sort_by { |post| post.created_at }
      when 'Most Likes'
        Post.all.sort_by { |post| post.likes.count }.reverse
      when 'Least Likes'
        Post.all.sort_by { |post| post.likes.count }
      end
  end


end
