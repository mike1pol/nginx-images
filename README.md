# nginx-images
nginx image resizer and cache

## Run
```
docker run -p 8080:80 -e BUCKET_URL=www.googleapis.com/download/storage/v1/b/my-bucket/0 nginx-images
```

## Usage
Resize by width
```
http://localhost:8080/$media/{width}/my-super-image-hash
``` 

Crop by width and height
```
http://localhost:8080/$media/{width}x{height}/my-super-image-hash
``` 


