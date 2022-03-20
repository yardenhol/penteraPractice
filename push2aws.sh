aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/y3k0p7v9
docker build -t penterapractice1 .
docker tag penterapractice1:latest public.ecr.aws/y3k0p7v9/penterapractice1:latest
docker push public.ecr.aws/y3k0p7v9/penterapractice1:latest
