
create_env:
	conda create -n env-tf-poet-3.8 python=3.8

install_x64:
	poetry install -E tensorflow-x64

install_m1:
	poetry install -E tensorflow-m1

run_main:
	poetry run python main.py

# when new packages are installed poetry overwrites these packages, thus
# this command needs to be executed after each change in the environment.
patch_mac_m1:
	conda install -y -c apple tensorflow-deps
	conda install -y grpcio --force-reinstall
	conda install -y h5py --force-reinstall
	conda install -y -c anaconda joblib --force-reinstall