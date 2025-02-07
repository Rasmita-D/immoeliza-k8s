
## :classical_building: Description
This project explores the usage of kubernetes to deploy the front end and backend of the [immo eliza deployment](https://github.com/Rasmita-D/immo-eliza-deployment-fastapi) in separate pods. It is currently designed to run locally.

##	:building_construction: Repo Structure
```
+---fast_api
|       main.py
|       
+---models
|       cat_boost.pkl
|       kitchen_ordinal.pkl
|       linear_regression.pkl
|       one_hot.pkl
|       random_forest.pkl
|       state_building_ordinal.pkl
|       
+---streamlit
|       slapp.py
|       using_api.py
|       Dockerfile
|       service.yaml
|       streamlit_pod.yaml
|       requirements.txt
|   .gitattributes
|   Dockerfile
|   service.yaml
|   api_pod.yaml
|   README.md
|   requirements.txt

```
## 🛎️ How to use?

1. Install kubernetes and create a cluster. 
2. Create pods using the files api_pod.yaml and streamlit/streamlit_pod.yaml
3. Create services using the files streamlit/service.yaml and service.yaml
4. Run the services using
   ```
   minikube service streamlit-service
   minikube service fastapi-service
   ```
You may have to run the 2 lines in 2 separate instances of the CLI.

## Enhancements
1. Find a free way to delploy this kubernetes cluster globally.

## ⏱️ Timeline

This project took three days for completion.

## 📌 Personal Situation
This project was done as part of the AI Boocamp at BeCode.org. 

Connect with me on [LinkedIn](https://www.linkedin.com/in/rasmita-damaraju-33b577126/).
