set -euo pipefail

if ! command -v ansible &> /dev/null; then
    echo "ansible-core is missing. Installing..."
    sudo apt update && sudo apt install -y ansible-core
else
    echo "ansible-core is already installed."
fi

# Install Ansible collections
ansible-galaxy collection install -r infra/ansible/requirements.yml