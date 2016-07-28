module Profiles
  class Index < ::Stache::Mustache::View
    def my_view_helper_method
      "whoo"
    end
  end
end
