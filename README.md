Steps to deploy application on kubernetes with multiple images


* Create sample application
* add docker file to the project.
* run docker build command to make an image of application (docker build -t imagename .)
* Add yaml files to create deployment and services to access the pod.
  I have created two files seperatly one for application and one for sql server.(deployment.yaml, sqlserverdeployment.yaml)
* now make the changes on yaml accordingly.
* Run the kubectl commands to apply yaml files to make affects we specified on the .yaml files.
  cmd --- kubectl apply -f .\kubernetes\deployment.yml

Commands to check deployement is done and services are deployed

  cmd--
  kubectl get deploy    
   kubectl get services
    kubectl get pods
Try to access the application.
