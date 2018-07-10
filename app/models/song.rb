class Song < ActiveRecord::Base
  validates :title, presence: true, uniqueness: {scope: [:artist_name, :release_year]}
  validates :release_year, presence: true,  if: :released?
  validates_numericality_of :release_year, less_than_or_equal_to

  def current_year
    if self.release_year > D

    end
  end

end
