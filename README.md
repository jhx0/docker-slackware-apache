To make the container run the following example command:  
docker build -t slack-httpd:1.0 .  

Run the container with the following command:  
docker run -p 8080:80 --name slack-httpd slack-httpd:1.0  

Make sure to pick a free port.
