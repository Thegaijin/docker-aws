FROM: python:3.7.3-stretch

#  working directory
WORKDIR /app

# Copy source code to working directory
COPY . flask_app/web /app/

# Install packages from requirements.txt
# hadolint ignore=DL3813
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

# EXPOSE port 80
EXPOSE 80

# Run app.py at container launch
CMD ["python", "web.py"]