module HammerCLIForemanDeployments

  class Stack < HammerCLIForeman::Command

    resource :stacks

    class ListCommand < HammerCLIForeman::ListCommand

      output do
        field :id, _("Id")
        field :name, _("Name")
        HammerCLIForeman::References.taxonomies(self)
        HammerCLIForeman::References.timestamps(self)
      end

      build_options
    end


    class InfoCommand < HammerCLIForeman::InfoCommand

      output ListCommand.output_definition do
        field :description, _('Description')
      end

      build_options
    end


    class CreateCommand < HammerCLIForeman::CreateCommand
      success_message _("Stack created")
      failure_message _("Could not create the stack")

      build_options
    end


    class DeleteCommand < HammerCLIForeman::DeleteCommand
      success_message _("Stack deleted")
      failure_message _("Could not delete the stack")

      build_options
    end


    class UpdateCommand < HammerCLIForeman::UpdateCommand
      success_message _("Stack updated")
      failure_message _("Could not update the stack")

      build_options
    end

    autoload_subcommands
  end

end
