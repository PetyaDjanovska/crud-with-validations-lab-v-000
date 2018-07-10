class Song < ActiveRecord::Base
  validates :title, presence: true, uniqueness: {scope: [:artist_name, :release_year]}
  validates :release_year, presence: true,  if: :released?, :future_release_year
  validates_absence_of :release_year, unless: :released?
  # validate :future_release_year
  validates :artist_name, presence: true

  def future_release_year
    if self.release_year > Date.current.year
      errors.add(:release_year, "can not be in the future")
    end
  end


end
