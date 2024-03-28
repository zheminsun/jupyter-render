FROM jupyter/base-notebook

RUN pip install pandas matplotlib
EXPOSE 8000

# Set the password hash here
ARG HASHED_PASSWORD="4ff792eb32f88acc3dc896bf7efef082b6615e30"

RUN echo "c.NotebookApp.password = '${HASHED_PASSWORD}'" >> /home/jovyan/.jupyter/jupyter_notebook_config.py

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8000", "--no-browser", "--allow-root"]
