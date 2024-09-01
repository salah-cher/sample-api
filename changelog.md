### Changelog for Dockerfile

- **Base Image**: Switched to `python:3.12` as the base image for Python dependencies.
- **Environment Variables**: Added environment variables to optimize Python and Poetry behavior.
- **Poetry Installation**: Integrated Poetry for dependency management by installing version `1.8.3`.
- **Working Directory**: Set `/application` as the working directory for the application.
- **Copy Project Files**: Configured to copy all project files into the container.
- **Dependency Installation**: Configured the installation of dependencies using Poetry.
- **Command**: Defined `CMD` to run `./start-local.sh` on container start.
