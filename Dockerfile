FROM jupyter/base-notebook

RUN pip install pandas matplotlib
EXPOSE 8000
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8000", "--no-browser", "--allow-root"]
