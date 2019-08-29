server {
    listen 80;
    server_name davidsakoyan.com www.davidsakoyan.com;

    location = /favicon.ico { access_log off; log_not_found off; }
    location /static/ {
        root /home/asakoyan/dswproject;
    }

    location / {
        include proxy_params;
        proxy_pass http://unix:/home/asakoyan/run/gunicorn_dsw.sock;
    }
}