Tested on Ubuntu 14.04

First of all you'll need extra ssl packages for python compilation & running the
app.

```
sudo apt-get install -y libssl0.9.8 libreadline5
```

then pkgr itself:

```
sudo gem install pkgr
```

and finally run

```
./package.sh
```


#TODO

At the moment when building the package everything gets dumped into
`/opt/py-pkgr` so you'll need `sudo` to `chown` that dir

