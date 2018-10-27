wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
sudo chmod +x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh
source ~/.bashrc
conda create -n py3 python=3
source activate py3
conda install -y pip jupyter xlrd pandas numpy sqlalchemy plotly seaborn
wget http://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/t/texlive-upquote-svn26059.v1.3-55.el7.noarch.rpm
sudo rpm -Uvh texlive-upquote-svn26059.v1.3-55.el7.noarch.rpm
sudo yum -y install texlive texlive-*.noarch
jupyter notebook --generate-config
sed -i 's/#c.NotebookApp.allow_password_change = True/c.NotebookApp.allow_password_change = True/g' \
/home/ec2-user/.jupyter/jupyter_notebook_config.py
jupyter notebook password 
jupyter notebook --ip=0.0.0.0 --port=8080 --no-browser &