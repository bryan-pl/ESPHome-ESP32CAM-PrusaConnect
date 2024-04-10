curl --max-time 10 http://CAMERAIP:8081/ -o /config/tmp/snapshot.jpg -s
curl -X PUT --max-time 10 -H "Content-Type: image/jpeg" -H "fingerprint: camera_fingerprint" -H "token: prusa_connect_token" -T /config/tmp/snapshot.jpg https://webcam.connect.prusa3d.com/c/snapshot
