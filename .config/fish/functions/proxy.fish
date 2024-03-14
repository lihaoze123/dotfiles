function proxy 
    set -gx PROXY_HTTP "http://127.0.0.1:7890"
	set -gx ALL_PROXY $PROXY_HTTP
	set -gx HTTPS_PROXY $PROXY_HTTP
	set -gx HTTP_PROXY $PROXY_HTTP
end
