class Skill < ActiveRecord::Base
  # Remember to create a migration!
  has_many :users, through: :proficiencies
  has_many :proficiencies

   validates :name, uniqueness: true

  def user_with_proficiency(proficiency)
    puts "8" * 90
    skill_this = self.id

    prof = Proficiency.where(skill_id: skill_this, proficiency: proficiency)
    puts prof.user
   end
end
