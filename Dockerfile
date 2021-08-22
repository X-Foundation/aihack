FROM ubuntu:latest
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN bash Miniconda3-latest-Linux-x86_64.sh -b -p /miniconda
ENV PATH=$PATH:/miniconda/condabin:/miniconda/bin
RUN conda env create -f packages/environment_one.yml
SHELL ["conda","run","-n","one","/bin/bash","-c"]
RUN python -m ipykernel install --name kernel_one --display-name "Display Name One"
RUN pip install -U -r packages/requirements_one.txt
SHELL ["/bin/bash","-c"]
RUN conda init
RUN echo 'conda activate one' >> ~/.bashrc
EXPOSE 8888                                           
ENTRYPOINT ["jupyter", "notebook", "--no-browser","--ip=0.0.0.0","--NotebookApp.token=''","--NotebookApp.password=''"]
