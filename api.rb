module BaseHelper
  extend Grape::API::Helpers

  params :type do |type:|
    type = type.to_s
    requires :type,
             type: String,
             values: { value: [type], message: "must have the value `#{type}`" }
  end
end

class API < Grape::API
  helpers BaseHelper

  desc 'Missing keyword error'
  params do
    use :type, type: :api
  end
  get 'error' do
    'This throws a missing keyword error in Ruby 3.0'
  end
end
