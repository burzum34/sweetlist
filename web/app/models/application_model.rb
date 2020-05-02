module ApplicationModel
  def self.included(base)
    base.include ActiveModel::Model
  end
end
