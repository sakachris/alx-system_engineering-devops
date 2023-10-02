# Installing Nginx and configuration

exec { 'install config nginx':
  provider => shell,
  command  => 'apt-get -y update ; apt-get -y install nginx ; echo "Hello World!" > /var/www/html/index.html ; echo "Ceci nest pas une page" > /var/www/html/error_404.html ; service nginx start ; sed -i "25i location /redirect_me {\n return 301 https://www.youtube.com/watch?v=v5nfmtFzvvk;\n}\n" /etc/nginx/sites-available/default ; sed -i "28i error_page 404 /error_404.html;\n location = /error_404.html {\n root /var/www/html;\n internal;\n}\n" /etc/nginx/sites-available/default ; sed -i "33i\\ ; \tadd_header X-Served-By \$hostname;" /etc/nginx/sites-available/default ; service nginx restart',
}
