# frozen_string_literal: true

# ResidentialMortgageLoanOrganizer
class ResidentialMortgageLoanOrganizer
  include Interactor::Organizer

  # Hooks
  before do
    # Setup Request Data
    context.organization = Organization.find(context.params[:org_id])
  end

  after do
    # Setup Result Data
    # Execute anything we want after rules
  end

  organize Rules::RuleCollectProjectInfo,
           Rules::RuleCreateLoanFile
end
