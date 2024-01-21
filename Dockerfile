ARG PYTHON_VERSION=python-3.8
ARG BASE_IMAGE=jupyter/scipy-notebook

# Example Dockerfile for JupyterLab
FROM $BASE_IMAGE:$PYTHON_VERSION

# Install required packages
RUN apt-get update && apt-get install -y your_packages

# Install JupyterLab
RUN pip install jupyterlab

# Additional configurations if needed

# Expose port
EXPOSE 8888

# Command to run JupyterLab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--no-browser", "--allow-root"]

CMD [ "start-notebook.sh", "--no-browser", "--ip=0.0.0.0", "--config=/etc/jupyter/jupyter_notebook_config.py" ]

# ENTRYPOINT ["jupyter", "lab", "--allow-root", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--config=/etc/jupyter/jupyter_notebook_config.py"]
