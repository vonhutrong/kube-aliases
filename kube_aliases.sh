# Define the directory where your kubeconfig files are stored
KUBECONFIG_DIR=~/.kube/configs

# Create a function to generate an alias for k9s and kubectl with a specific kubeconfig file
function generate_aliases() {
  local config_file=$1
  local base_name=$(basename "$config_file")
  local alias_name="${base_name%.*}"  # Remove extension

  # Generate alias for k9s
  eval "alias k9s-$alias_name='KUBECONFIG=$config_file k9s'"

  # Generate alias for kubectl
  eval "alias kubectl-$alias_name='kubectl --kubeconfig=$config_file'"
}

# Generate the aliases
for config_file in $(find $KUBECONFIG_DIR -type f \( -name "*.yaml" -o ! -name "*.*" \)); do
  generate_aliases $config_file
done
