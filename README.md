This is a template for writing autotest testers. 
To write your tester, go through the files in this repo and fill in the bit marked "TODO".
Feel free to use other repos named autotest-tester-* in this project as inspiration.

Testers require different files depending on the type of backend they can be run with. All other files are optional.

To run with the classic backend: 

- `classic.cli` is required

To run with the docker backend:

- `docker.cli` is required
- `Dockerfile` is required

All testers need to specify configuration settings by printing a json schema by running the `settings` 
option in one of the `*.cli` files. This schema needs to minimally contain the structure present in the
`schema.json` file.

# TODO: write a README for your tester