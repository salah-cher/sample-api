### Changelog for Dockerfile

#### Version Updates
- **Base Image**: Updated to use the official Python 3.12 image for the latest Python features and security updates.

#### Environment Configuration
- **Environment Variables**: Added multiple environment variables to optimize Python and Poetry including:
  - `PIP_NO_CACHE_DIR`, `PIP_DISABLE_PIP_VERSION_CHECK`, and `PIP_DEFAULT_TIMEOUT` to manage pip settings.
  - `POETRY_VERSION`, `POETRY_HOME`, `POETRY_VIRTUALENVS_IN_PROJECT`, and `POETRY_NO_INTERACTION` for Poetry configuration.
  - `PYTHONDONTWRITEBYTECODE` and `PYTHONUNBUFFERED` for Python execution behavior.
  - `PYTHONPATH` and `PATH` to include the application directory and Poetry bin.

#### Dependency Management
- **System Dependencies**: Added `curl`, `build-essential`, and `libpq-dev` for building and installing dependencies.
- **Poetry Installation**: Had issue with first install then switched to installing Poetry via `pip` for consistency with Python package management.
- **Verification**: Added steps to verify Python and Poetry installations to ensure correct setup during the testing process.

#### Application Setup
- **Working Directory**: Set `/application` as the working directory for the application.
- **Project Files**: Copied all project files into the container.
- **Dependencies**: Installed application dependencies using Poetry.
- **Startup Command**: Set `CMD` to run `./start-local.sh` on container start.
