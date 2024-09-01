---

### Changelog for Sample API Project

#### 1. Instructions on How to Pull and Run Your Image

To pull and run the Docker image from GitHub Container Registry (GHCR):

1. **Pull the Docker image:**
   ```bash
   docker pull ghcr.io/salah-cher/sample-api:latest
   ```

2. **Run the Docker image:**
   ```bash
   docker run -p 8000:8000 ghcr.io/salah-cher/sample-api:latest
   ```
   This command will run the Docker container on port 8000.

#### 2. Instructions on How to Trigger and Run the Workflow

To trigger and run the GitHub Actions workflow:

**Push changes** to the `main` branch or create a **pull request** targeting the `main` branch of your repository. This action will automatically trigger the workflow.


#### 3. Demonstration of a Successful Workflow Run

The workflow was successfully run on: 
https://github.com/salah-cher/sample-api/actions/runs/10654078353
https://github.com/salah-cher/sample-api/actions/runs/10654078356

more details can be found here: 

https://github.com/salah-cher/sample-api/actions/runs/10654078353/job/29529942924
