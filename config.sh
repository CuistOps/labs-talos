
NETWORK_NAME="talos-net"
SUBNET_NAME="talos-subnet"
EXT_FLOATING="ext-floating1"

# --- Admin instance configuration ---
KEY_NAME="ssh-admin"
ADMIN_FLAVOR="a2-ram4-disk50-perf1"
IMAGE="Debian 12 bookworm"
INSTANCE_NAME="admin-machine"
EXTERNAL_NET="ext-net1"
SEC_GROUP_ADMIN="allow_ssh_icmp"
SSH_KEY="~/.ssh/id_ed25519.pub" # Path to your SSH public key
KEY_NAME="ssh-admin"

# --- Talos ---
IMAGE_URL="https://github.com/siderolabs/talos/releases/download/v1.6.6/openstack-amd64.raw.xz"
IMAGE_NAME="Talos v1.6.6"
SUBNET="talos-net"

# --- Control plane ---
CONTROL_PLANE_FLAVOR="a2-ram4-disk50-perf1"
CONTROL_PLANE_INSTANCE_NAME="control-plane"
NUMBER_OF_CONTROL_PLANE_INSTANCES=3

# --- Worker nodes ---
WORKER_FLAVOR="a2-ram4-disk50-perf1"
WORKER_INSTANCE_NAME="worker-node"
NUMBER_OF_WORKER_INSTANCES=3

# --- Router ---
ROUTER_NAME="router-talos"
