## pretbox
*Rule #1, pretbox is not a box*

pretbox is a beginner friendly, vagrant provisioning script that sets up pret's pokeruby and pokeemerald inside of a virtual machine.

### Installing

1. Download and install a VM provider listed in https://www.vagrantup.com/docs/providers/
2. I recommend you use [url=http://virtualbox.org]VirtualBox[/url] as a provider, it's free.
3. Download and install vagrant https://www.vagrantup.com/downloads.html
4. Clone pretbox
5. Using cmd or powershell, ``cd`` into the pretbox folder.
6. Type ``vagrant up`` .

### Modifying files
After setting up ``pretbox``, you will find that the ``pret`` folder has been populated with ``pokeruby`` and ``pokeemerald``. Modify anything inside of the ``pret/`` folder using either tools from your host or guest OS.

### Re-Compiling
1. Using cmd or powershell, ``cd`` into the pretbox folder.
2. Type ``vagrant ssh``, this will let you interact with the virtual machine.
3. Inside of your virtual machine, ``cd`` into ``/pret/pokeruby`` or ``/pret/pokeemerald``
4. Type ``make`` with whatever arguments you desire.
5. Provided you modified everything correctly, it should compile.
