# Secret Santa

This script randomizes picks for a secret santa. It reads all particpants, executes the draw and sends results via email.

## Configuration

In the `data` folder, you can add all the participants. The `black_list` defines the names one participant can't draw. 
This is used to prevent you from picking yourself but can be applicable to other constraints. 

In the `config` you should add the SMTP information. Default configuration is using a local SMTP and Gmail configuration is commented out. The script uses [Pony](https://github.com/benprew/pony) for email delivery.

## Execution

After you customize `data` and `config` you can run by executing `./lib/secretSanta`
