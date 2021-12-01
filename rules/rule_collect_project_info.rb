# frozen_string_literal: true

module Rules
  # RuleCollectProjectInfo
  class RuleCollectProjectInfo
    def call
      return if params[:project].nil?

      set_project_info
    end

    private

    def set_project_info
      context.project = Project.find(context.params[:project][:id])
    end
  end
end
