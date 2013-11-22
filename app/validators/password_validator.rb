class PasswordValidator < ActiveModel::EachValidator
  def validate_each(record, attr_name, value, value2)

    unless value == value2
      record.errors.add(attr_name, :password, options.merge(:value => value))
    end
  end

  module ActiveModel::Validations::HelperMethods
    def validates_pass(*attr_names)
      validates_with PasswordValidator, _merge_attributes(attr_names)
    end

  end
end