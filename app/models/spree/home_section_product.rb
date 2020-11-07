module Spree
  class HomeSectionProduct < Spree::Base
    acts_as_list scope: :home_section

    belongs_to :home_section, class_name: 'Spree::HomeSection', required: true
    belongs_to :product,
               -> { includes :reviews },
               class_name: 'Spree::Product',
               required: true,
               counter_cache: true,
               inverse_of: :reviews
  end
end
