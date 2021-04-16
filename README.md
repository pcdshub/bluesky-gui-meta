Test env
--------

```bash
conda create -n bsgui --clone /reg/g/pcds/pyps/conda/py36/envs/pcds-4.1.2/
conda install -n bsgui bluesky bluesky-live ophyd qtpy

conda activate bsgui
source install_submodules.sh
```

Environment
-----------

Per @ZLLentz

1. Create IPython profile (or at least, directory with python files that include all objects we want to use)
2. Activate this conda env
3. cd to profile
4. `qserver-list-plans-devices --startup-dir .`
5. create `user_group_permissions.yaml` to specify what to exclude
6. start-re-manager --startup-dir .

Redis (development)
-------------------

Start ``/reg/g/pcds/pyps/apps/redis/6.2.1/bin/redis-server``


Missing deps
------------

qtpy
