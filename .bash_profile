# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs
export LD_LIBRARY_PATH=/usr/lib/oracle/11.2/client64/lib
export TCLLIBPATH=/usr/local/lib
export ORACLE_HOME=/usr/lib/oracle/11.2/client64
export PATH=/u/sources/javier.montero/local/bin:/usr/local/bin:$ORACLE_HOME/bin:/usr/local/bin/gradle/bin/:/usr/local/bin/gradle-6.6.1/bin:$PATH
export PYTHONPATH=/u/sources/javier.montero/local/CL-PyMod/py/modules:/u/sources/javier.montero/local/lib
export GREP_OPTIONS='--no-messages'
PATH=$PATH:$HOME/bin

export PATH
