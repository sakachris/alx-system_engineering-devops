# Executing pkill command

exec { 'killmenow':
  command     => 'pkill killmenow',
  path        => '/bin:/usr/bin',
  refreshonly => true,
}
