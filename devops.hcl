# DevOps Policy
# Read system health check
path "sys/health"
{
  capabilities = ["read"]
}

# Create and manage ACL policies broadly across Vault

# List existing policies
path "sys/policies/acl"
{
  capabilities = ["list"]
}

# Create and manage ACL policies
path "sys/policies/acl/*"
{
  capabilities = ["read", "list"]
}

#  Read and List auth methods broadly across Vault
path "auth/*"
{
  capabilities = ["read", "list"]
}

# Manage auth methods broadly across Vault
path "IAM/*"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Read and List auth methods
path "sys/auth/*"
{
  capabilities = ["read", "list"]
}

# List auth methods
path "sys/auth"
{
  capabilities = ["read"]
}

# Enable and manage the key/value secrets engine at `secret/` path

# List, create, update, and delete key/value secrets
path "secret/*"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Manage secrets engines
path "sys/mounts/*"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# List existing secrets engines.
path "sys/mounts"
{
  capabilities = ["read"]
}
