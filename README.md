## pretbox
*Rule #1, pretbox is not a box*

pretbox is a beginner friendly, vagrant provisioning script that sets up pret's pokeruby and pokeemerald inside of a virtual machine.

### Installing

1. Download and install a VM provider listed in https://www.vagrantup.com/docs/providers/
  * I recommend you use http://virtualbox.org]VirtualBox as a provider, it's free.
2. Download and install vagrant https://www.vagrantup.com/downloads.html
3. Clone pretbox
4. Using cmd or powershell, ``cd`` into the pretbox folder.
5. Type ``vagrant up`` .

### Modifying files
After setting up ``pretbox``, you will find that the ``pret`` folder has been populated with ``pokeruby`` and ``pokeemerald``. Modify anything inside of the ``pret/`` folder using either tools from your host or guest OS.

### Re-Compiling
1. Using cmd or powershell, ``cd`` into the pretbox folder.
2. Type ``vagrant ssh``, this will let you interact with the virtual machine.
3. Inside of your virtual machine, ``cd`` into ``/pret/pokeruby`` or ``/pret/pokeemerald``
4. Type ``make`` with whatever arguments you desire.
5. Provided you modified everything correctly, it should compile.
