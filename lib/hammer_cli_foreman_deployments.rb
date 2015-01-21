require 'hammer_cli_foreman'

HammerCLI::MainCommand.lazy_subcommand 'deployment',
                                       _("Manipulate deployments."),
                                       'HammerCLIForemanDeployments::Deployment',
                                       'hammer_cli_foreman_deployments/deployment'

HammerCLI::MainCommand.lazy_subcommand 'stack',
                                       _('Manipulate stacks.'),
                                       'HammerCLIForemanDeployments::Stack',
                                       'hammer_cli_foreman_deployments/stack'
