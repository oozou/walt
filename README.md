# betabot

betabot is a chat bot built on the [Hubot][hubot] framework.

## Installation

### Ensure nodejs installed :
First you have to ensure that you already have `nodejs` installed on your machine.
```
node -v
```
If it raise command not found, install it using `brew install nodejs`

### Install dependencies :
After you have `nodejs` installed, next use `npm` to install `betabot` dependencies.
```
npm install
```

## Face him
After you have ready to use bot (complete installation guide) you should ready to launch him up!! 


### Locally:
Run it locally using `make start` or `npm run local`.
Then try to nag him with `ping` command.
```
betabot> betabot ping
PONG
```

### Connect with Slack:
__WARNING :___ Doing this will make Slack connect with bot running on your machine instead of deployed one.

#### Configuration :
First you have to set variables properly using `make init` or `npm run init` and then follow the instructions.
After finished it should create file containing your configuration named `Makefile.vars`.

#### Connect :
Connect with slack using `make connect_slack` or `npm run connect_slack`
