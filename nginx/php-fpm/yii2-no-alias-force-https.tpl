server {
    listen      %ip%:%web_port%;
    server_name %domain_idn%;
	include %home%/%user%/conf/web/nginx.%domain%.conf_lets*;
    location / {
        rewrite ^(.*)$ https://%domain_idn%$1 permanent;
    }
}
