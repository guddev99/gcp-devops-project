# GCP DevOps Project

This project deploys a simple Python Flask application to Google Kubernetes Engine (GKE) using Google Cloud Build and Google Artifact Registry. The application is exposed through an endpoint, allowing easy access.

## Project Structure

- `app.py`: Contains the Python Flask application code.
- `requirements.txt`: Lists the dependencies required for the Flask application.
- `Dockerfile`: Defines the Docker image build instructions.
- `cloudbuild.yaml`: Configures the Google Cloud Build steps for building and deploying the Docker image.
- `gke.yaml`: Specifies the Kubernetes deployment and service configurations for GKE.

## Getting Started

To run this project locally or deploy it to GKE, follow these steps:

1. Clone the repository:

   ```bash
   git clone <repository-url>
   ```

2. Navigate to the project directory:

   ```bash
   cd <project-directory>
   ```

3. Ensure you have Docker installed:

   - [Docker](https://docs.docker.com/get-docker/)

4. Build the Docker image locally:

   ```bash
   docker build -t gcpdevops .
   ```

5. Run the Docker container locally:

   ```bash
   docker run -p 5000:5000 gcpdevops
   ```

   Access the Flask application at `http://localhost:5000` in your web browser.

6. To deploy to GKE, ensure you have a GKE cluster set up and configured. 

7. Update `cloudbuild.yaml` and `gke.yaml` with your GKE cluster details.

8. Set up a Cloud Build Trigger connected with the project repository. This trigger should be configured to listen for pushes to the main/master branch.

9. When changes are pushed to this branch, Cloud Build will automatically build the Docker image, push it to Google Artifact Registry, and deploy it to GKE.

10. Access your deployed application through the endpoint provided by the GKE service.

## Resources

- [Google Cloud Build Documentation](https://cloud.google.com/build/docs)
- [Google Artifact Registry Documentation](https://cloud.google.com/artifact-registry/docs)
- [Google Kubernetes Engine Documentation](https://cloud.google.com/kubernetes-engine/docs)

Feel free to contribute to this project or customize it according to your requirements!
