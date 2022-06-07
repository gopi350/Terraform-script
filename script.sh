    #!/bin/bash
     sudo -i
     apt-get update -y
     apt-get install apache2  -y
     rm -r /var/www/html/index.html
     echo "<h1> webserver for terraform </h1>" > /var/www/html/index.html
    