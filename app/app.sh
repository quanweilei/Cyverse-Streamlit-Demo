while getopts "g:" opt; do
  case ${opt} in
    g)
      git=$OPTARG
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done

git clone ${git}
cd Streamlit-test

pip install --upgrade pip
pip install -r ./requirements.txt


streamlit run streamlit.py -server.enableCORS false --server.enableXsrfProtection false
