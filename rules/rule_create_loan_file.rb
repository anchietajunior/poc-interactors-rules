# frozen_string_literal: true

module Rules
  # This Rule/Class creats a new Loan File
  # if the project or the organization is present
  # for example or it could just stop the process with a fail!
  class RuleCreateLoanFile
    def call
      if context.project.present?
        create_loan_file
      else
        context.fail!(message: 'Project is required to create a loan file')
      end
    end

    private

    def create_loan_file
      File.create!(formatted_params)
    end

    def formatted_params
      {
        project_id: context.project.id,
        organization_id: context.organization_id,
        title: 'Loan File Number 100'
      }
    end
  end
end
