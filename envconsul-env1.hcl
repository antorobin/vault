vault {
  address = "http://vault.vault-namespace.svc.cluster.local:8200"
  token   = "<renewable-token-generated-from-the-vault>"
  
  ssl {
    enabled = false
    verify  = false    
  }
}

secret {
  path = "secret/demoapp/env1"
}
