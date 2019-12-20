conan-exiles-ansible-role
=========

It's a role to install and configure a Conan Exiles game server.

Requirements
------------

At this time it works only in Ubuntu Server.

Role Variables
--------------

A description of the settable variables for this role should go here, including
any variables that are in defaults/main.yml, vars/main.yml, and any variables
that can/should be set via parameters to the role. Any variables that are read
from other roles and/or the global scope (ie. hostvars, group vars, etc.) should
be mentioned here as well.

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in
regards to parameters that may need to be set for other roles, or variables that
are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables
passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: conan-exiles-ansible-role }

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a
website (HTML is not allowed).


Reference Links
---------------

- [Valve Developer Community - SteamCMD](https://developer.valvesoftware.com/wiki/SteamCMD)
- [Valve Developer Community - Command Line Options](https://developer.valvesoftware.com/wiki/Command_Line_Options)

Drafts
------

    # SteamCMD tool installation
    sudo add-apt-repository multiverse
    sudo dpkg --add-architecture i386
    sudo apt update
    sudo apt install lib32gcc1 steamcmd

    # create install folder
    sudo mkdir -p /usr/local/steam-services/conan/conan_exiles/

    # change install folder owner
    sudo chown steam. -R /usr/local/steam-services/conan/conan_exiles/

    # install server
    sudo -u steam /usr/games/steamcmd +@sSteamCmdForcePlatformType windows +login anonymous +force_install_dir /usr/local/steam-services/conan/conan_exiles/ +app_update 443030 validate +quit

    # start Conan Exile server
    Xvfb :2 -screen 0 640x480x24 &
    DISPLAY=:2 wine ConanSandboxServer.exe -log
