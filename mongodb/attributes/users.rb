default['mongodb']['admin'] = {
  'username' => 'admin',
  'password' => 'dh1Pass',
  'roles' => %w(userAdminAnyDatabase dbAdminAnyDatabase clusterAdmin userAdmin read readWrite dbAdmin readAnyDatabase readWriteAnyDatabase),
  'database' => 'admin'
}

default['mongodb']['users'] = []
