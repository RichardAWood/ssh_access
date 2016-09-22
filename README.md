SSH Access
==========

To give me sudo access to a Ubuntu server.

Run:

```sh
sudo ./create_rwood_user_with_sudo_access.sh
```

One liner:
```sh
cd /tmp && git clone https://github.com/RichardAWood/ssh_access.git && cd ssh_access && ./create_rwood_user_with_sudo_access.sh && echo 'Richard has access' && cd .. && rm -r ssh_access
```
<hr/>

Thanks to [@bcarlsenca](https://github.com/bcarlsenca) for the idea.
