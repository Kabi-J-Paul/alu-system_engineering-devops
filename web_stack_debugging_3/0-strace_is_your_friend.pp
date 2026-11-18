# Fix the .phpp typo in wp-settings.php so WordPress stops fataling
exec { 'fix-wordpress':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => ['/usr/bin', '/bin'],
}
