Test env
--------

```bash
conda env create -n bsgui -f /reg/g/pcds/pyps/conda/pcds-envs/envs/pcds/env.yaml
# or perhaps conda create -n bsgui --clone /reg/g/pcds/pyps/conda/py36/envs/pcds-4.1.2/
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
6. `start-re-manager --startup-dir .`

Redis (development)
-------------------

Start ``/reg/g/pcds/pyps/apps/redis/6.2.1/bin/redis-server``


Missing deps
------------

qtpy


Notes
-----

Per Dmitri:

> By default, RE manager is deleting the instance of Run Engine created in
> startup files and replacing it with a new instance, so you lose all the
> subscriptions. This behavior can be turned off by starting RE Manager with
> --keep-re parameter: start-re-manager --keep-re.
