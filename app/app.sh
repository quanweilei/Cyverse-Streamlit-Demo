
echo "input git link"
read gitfile
git clone ${gitfile}
cd Streamlit-test
ls
pip install --upgrade pip
pip install -r ./requirements.txt

streamlit run streamlit.py server.port=8501 --server.address=0.0.0.0
