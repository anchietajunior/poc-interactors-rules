# frozen_string_literal: true

module Rules
  # This Rule/Class just set a project if it's present
  # inside context.params
  class RuleCollectProjectInfo
    def call
      return if context.params[:project].nil?

      set_project_info
    end

    private

    def set_project_info
      context.project = Project.find(context.params[:project][:id])
    end
  end
end
