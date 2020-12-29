module Docs
  module V1
    module Sessions
      extend Dox::DSL::Syntax

      document :api do
        resource 'Sessions' do
          endpoint '/sign_in'
          group 'Authorize'
        end
      end

      document :create do
        action 'Create a session'
      end

      document :api do
        resource 'Sessions' do
          endpoint '/sign_out'
          group 'Authorize'
        end
      end

      document :destroy do
        action 'Destroy a session'
      end
    end
  end
end
