
```
git clone https://github.com/salekseev/puppet-bonding
cd puppet-bonding
git submodule init
git submodule update
sudo puppet apply --noop --modulepath . bonding.pp
```
