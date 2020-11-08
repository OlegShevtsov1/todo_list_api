module Docs
  module V1
    module Statuses
      extend Dox::DSL::Syntax

      document :api do
        resource 'Status' do
          endpoint '/statuses'
          group 'Tasks'
        end
      end

      document :update do
        action 'Update task status'
      end
    end
  end
end
