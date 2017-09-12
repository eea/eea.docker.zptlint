# Docker image for zptlint checker

[zptlint](https://pypi.python.org/pypi/zptlint) is a utility to debug Zope Page Templates


## Supported tags and respective `Dockerfile` links

- [`latest` (*Dockerfile*)](https://github.com/eea/eea.docker.zptlint/blob/master/Dockerfile)
- [`0.2.5` (*Dockerfile*)](https://github.com/eea/eea.docker.zptlint/blob/0.2.5/Dockerfile)

## Usage


    $ docker run -i --rm -v /path/to/python/code:/code eeacms/zptlint

or

    $ docker run -i --rm eeacms/zptlint https://github.com/eea/eea.alchemy.git
