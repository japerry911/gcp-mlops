# Assign Service account user role to the service account 
gcloud projects add-iam-policy-binding jp-mlops-sandbox \
--member=serviceAccount:49229966525@cloudbuild.gserviceaccount.com --role=roles/iam.serviceAccountUser


# Assign Cloud Run role to the service account 
gcloud projects add-iam-policy-binding jp-mlops-sandbox \
  --member=serviceAccount:49229966525@cloudbuild.gserviceaccount.com --role=roles/run.admin
