function Get-Adgroup-ByOwner ($user) {
  #If you want to search the whole directory you can leave this out, remove from Get-Adgroup also
  $basedn = ou=mygroupou,dc=myorg,dc=org"
  Get-Adgroup -LDAPFilter "(ManagedBy=$((Get-ADuser -Identity $user).distinguishedname))" -SearchBase $basedn
  }
