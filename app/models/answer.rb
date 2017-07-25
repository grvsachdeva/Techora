class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  validates :ans,presence: true,length: {maximum: 20}
  validates :question_id,presence: true
  validates :user_id,presence: true

  def ansCount
    return Answer.where(user_id: user_id).count
  end

end
