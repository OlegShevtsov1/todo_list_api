module Docs
  module V1
    module Prioritizations
      extend Dox::DSL::Syntax

      document :api do
        resource 'Prioritization' do
          endpoint '/prioritizations'
          group 'Tasks'
        end
      end

      document :update do
        action 'Update task priority'
      end
    end
  end
end
