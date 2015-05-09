**Status: DEV**

ScriptedCloud.PINF.Tools
========================

Use [PINF Logic](https://github.com/pinf-logic/pinf.logic) to orchestrate a **headless software development workspace** designed for working with *Distributed Open Source Software Architectures*.

This project is a clone of [genesis.pinf.org](https://github.com/pinf/genesis.pinf.org) and adds:

  * Root Secret
    * [OSX Keychain](https://github.com/pinf-io/io.pinf.pio.profile)
  * Profiles
    * [pio.pinf.io](https://github.com/pinf-io/io.pinf.pio.profile)
  * DNS Provisioning
    * [DNSimple](https://github.com/pinf-to/pinf-to-dnsimple)
  * VM Provisioning
    * [Digital Ocean](https://github.com/pinf-to/pinf-to-digitalocean)
    * [OpenShift](https://github.com/pinf-to/pinf-to-openshift)
  * Continuous Integration
    * [Travis CI](https://github.com/pinf-to/pinf-to-travis-ci)

### Requirements

  * OSX
  * [AWS](http://aws.amazon.com) credentials for IAM account with S3 bucket access
  * [DNSimple](http://dnsimple.com) Account
  * [Digital Ocean](http://digitalocean.com) Account
  * [OpenShift](http://openshift.com) Account
  * [Travis CI](http://travis-ci.org) Account

### Clones

Projects that inherit from this project and add more components:

  * [vm.devcomp.io](https://github.com/devcomp-io/io.devcomp.vm)
  * [devcomp.org](https://github.com/devcomp/devcomp.org)

### Architecture

  * **Microservices Server** is on *Digital Ocean** and intended to handle requests from developer, authorized guests and other services that are part of this system. Public access should be denied as this is a development instance of the system.

  * **Development Tools Server** is on *OpenShift** and intended to have a permanent socket connection to the *Microservices Server* and *Local Workspace Server*.

  * **Testing Server** is on *Travis CI** and while running tests against the *Microservices Server* it sends log data to the *Development Tools Server*.

  * **Local Workspace Server** runs on the local developer system during development and is intended to provide data about workspace to IDEs.

NOTE: This project deploys generic containers to each node of the architecture and it is left up to the developer to deploy their own code to the containers. See *Clones* for example implementations.


Usage
-----

See [here](https://github.com/pinf/genesis.pinf.org/blob/master/.pgs/vortex/WORKSPACE.md) for instructions on how to boot the [Development Workspace](http://devcomp.org).


Provenance
==========

Original source logic [UNLICENSED](http://unlicense.org/) by [Christoph Dorn](http://christophdorn.com).
