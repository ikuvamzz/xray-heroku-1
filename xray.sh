#!/bin/sh

# config xray
cat << EOF > /etc/config.json
{
  "inbounds":[
    {
      "port": 443,
      "protocol": "vless",
      "settings": {
        "decryption": "none",
        "clients": [
          {
            "id": "c95ef1d4-f3ac-4586-96e9-234a37dda068"
          }
        ]
      },
      "streamSettings": {
        "network": "ws"
      }
    }
  ],
  "outbounds": [
    {
      "protocol": "freedom"
    }
  ]
}	
EOF

# run xray
/usr/bin/xray run -config /etc/config.json
