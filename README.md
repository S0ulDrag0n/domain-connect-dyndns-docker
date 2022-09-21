# domain-connect-dyndns-docker

# Usage

The container will automatically look for environment variables prefixed with `DOMAIN` followed by a number.

```
DOMAIN1
DOMAIN2
DOMAIN3
...
```

Look for the container to perform the initial registration.

That or run the following command in the container to setup domains:

```
/usr/local/bin/domain-connect-dyndns setup --domain "test.com"
```

Use the following command to update all manually:

```
domain-connect-dyndns update --all
```
