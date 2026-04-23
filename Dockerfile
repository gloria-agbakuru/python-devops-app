FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY app.py .
EXPOSE 5000
CMD ["python", "app.py"]

## Line 1: FROM - What base image to start from
# python:3.11-slim is a small Linux with Python 3.11 pre-installed
# "slim" means minimal packages (smaller image = faster downloads)

# Line 3: WORKDIR - Sets the working directory inside the container
# All following commands will run from /app folder
# If /app doesn't exist, Docker creates it


# Line 5: COPY - Copies files from your computer INTO the container
# First "requirements.txt" = source file on YOUR computer
# Second "." = destination folder in container (current folder /app)


# Line 7: RUN - Executes command INSIDE the container while building
# pip install reads requirements.txt and installs Flask inside container
# --no-cache-dir = don't save downloaded files (saves space)


# Line 9: COPY app.py from your computer to /app in container


# Line 11: EXPOSE - Tells Docker this container listens on port 5000
# This is documentation - doesn't actually publish the port


# Line 13: CMD - The command to run when container starts
# ["python", "app.py"] means run "python app.py"
# CMD vs RUN: RUN is during build, CMD is during container execution

