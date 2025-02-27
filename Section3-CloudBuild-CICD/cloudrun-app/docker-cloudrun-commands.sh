# Step-1
docker build -t demo-flask-app .

# Push to Artifact Registry 
docker tag demo-flask-app us-central1-docker.pkg.dev/jp-mlops-sandbox/python-apps/demo-flask-app
docker push us-central1-docker.pkg.dev/jp-mlops-sandbox/python-apps/demo-flask-app

gcloud run deploy demo-flask-app2 \
--image us-central1-docker.pkg.dev/jp-mlops-sandbox/python-apps/demo-flask-app \
--region us-central1