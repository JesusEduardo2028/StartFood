class UserUniquenessValidator < Mongoid::Validations::UniquenessValidator
  def validate_each(record, attribute, value)
    record.errors[attribute] << "value #{value} is not unique" unless is_unique_within_votes(record, attribute, value)
  end

  def is_unique_within_votes(vote, attribute, value)
    vote.voteable.votes.each do |sibling|
      return false if sibling != vote && vote.user == sibling.user
    end
    true
  end
end