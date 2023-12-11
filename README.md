# How to use?
* Save kubeconfig files in the `~/.kube/configs` directory or its subdirectories
* The kubeconfig files can have a .yaml extension or no extension
* This script will generate a `k9s-<config>` and `kubectl-<config>` alias for each kubeconfig file
* You can run this script whenever you start a new shell, or you can add it to your `.bashrc` or `.zshrc` file to run it automatically
> To run it automatically, add this line `source ~/kube_aliases.sh`
* Finally, you can either restart your shell or source your .bashrc manually for the changes to take effect immediately
> `source ~/.bashrc`
