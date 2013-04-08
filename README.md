# Yet another django-chef-cookbook

This Chef cookbook is used to deploy sites on a nginx/gunicorn/celeryd/memcached stack
The cookbook is in no-way complete and should be seen as a starting point.

## Usage

1. Create a role and add the needed recipes to the run_list dict.
2. Overide the default settings in override_attributes for the role.
3. Run chef-client on the server.

