require 'hammer_cli_foreman'

HammerCLI::MainCommand.lazy_subcommand 'deployment',
                                       _("Manipulate deployments."),
                                       'HammerCLIForemanDeployments::Deployment',
                                       'hammer_cli_foreman_deployments/deployment'
