# Script to install all needed dependecies for caffe/pycaffe on debian stretch
# necessary to create symlinks for hdf5
# see https://github.com/BVLC/caffe/issues/4333#issuecomment-228874430
# cd /usr/lib/x86_64-linux-gnu
# sudo ln -s libhdf5_serial.so.x.x.x libhdf5.so
# sudo ln -s libhdf5_serial_hl.so.x.x.x libhdf5_hl.so

sudo apt install -y libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libhdf5-serial-dev protobuf-compiler libgflags-dev libgoogle-glog-dev liblmdb-dev libopenblas-dev build-essential python-dev python-pip
sudo apt install -y --no-install-recommends libboost-all-dev
for req in $(cat python/requirements.txt); do pip install $req; done

