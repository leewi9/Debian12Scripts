# Make all swap off
sudo swapoff -a

# Resize the swapfile
sudo dd if=/dev/zero of=/swapfile bs=1M count=512

# Make swapfile usable
sudo mkswap /swapfile

# Make swapon again
sudo swapon /swapfile
