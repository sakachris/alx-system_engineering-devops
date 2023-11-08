file { '/var/www/html/wp-settings.php':
  ensure  => file,
  content => file('/var/www/html/wp-settings.php').content.gsub('".phpp"', '".php"'),
}

service { 'apache2':
  ensure    => running,
  enable    => true,
  subscribe => File['/var/www/html/wp-settings.php'],
}
