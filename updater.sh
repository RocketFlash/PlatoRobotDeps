# hokuyo3d
rm -rf hokuyo3d
git clone https://github.com/at-wat/hokuyo3d.git
cd hokuyo3d
git reset --hard 6a8e867
rm -rf .git
cd ..
rm -rf .git/modules/hokuyo3d
git config -f .git/config --remove-section submodule.hokuyo3d 2> /dev/null

# Velodyne gazebo plugin
rm -rf velodyne_gazebo_plugins
git clone https://bitbucket.org/DataspeedInc/velodyne_simulator.git
cd velodyne_simulator
git reset --hard 57df09e9
git filter-branch --prune-empty --subdirectory-filter velodyne_gazebo_plugins HEAD
rm -rf .git
cd ..
mv velodyne_simulator velodyne_gazebo_plugins

