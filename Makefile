COFFEE := node_modules/.bin/coffee
HUBOT  := node_modules/.bin/hubot

ifneq ($(wildcard Makefile.vars),)
include Makefile.vars
endif

ifeq ($(BETABOT2),)
default: node_modules init
else
default: node_modules start
endif

init:
	$(COFFEE) init.coffee

start:
	$(HUBOT) --name betabot

connect_slack:
	$(HUBOT) --name walt --adapter slack
