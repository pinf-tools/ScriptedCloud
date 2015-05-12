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
  * Publishing
    * [Github Pages](https://github.com/pinf-to/pinf-to-github-pages)

### Requirements

  * OSX
  * [AWS](http://aws.amazon.com) credentials for IAM account with S3 bucket access
  * [DNSimple](http://dnsimple.com) Account
  * [Digital Ocean](http://digitalocean.com) Account
  * [OpenShift](http://openshift.com) Account
  * [Travis CI](http://travis-ci.org) Account

### Architecture

This project deploys generic containers to each node of the architecture and it is left up to the developer to deploy their own code to the containers. Each section below links to a reference implementation for that aspect.

  * **Microservices Server** is on *Digital Ocean* and intended to handle requests from developer, authorized guests and other services that are part of this system. Public access should be denied as this is a development instance of the system.

    * [github.com/pinf-io/io.pinf.vm](https://github.com/pinf-io/io.pinf.vm)

  * **Development Tools Server** is on *OpenShift* and intended to have a permanent socket connection to the *Microservices Server* and *Local Workspace Server*.

    * [github.com/devcomp-io/io.devcomp.vm](https://github.com/devcomp-io/io.devcomp.vm)

  * **Testing Server** is on *Travis CI* and while running tests against the *Microservices Server* sends log data to the *Development Tools Server*.

    * [github.com/sourcemint/sm.genesis](https://github.com/sourcemint/sm.genesis)

  * **Local Workspace Server** runs on the local developer system during development and is intended to provide data about workspace and system runtimes to IDEs.

    * [github.com/devcomp/devcomp.org](https://github.com/devcomp/devcomp.org)

  * **Documentation** runs on *Github Pages* and is intended to be updated from the *Development Tools Server* as changes occur.

    * [github.com/sourcemint/sm.genesis](https://github.com/sourcemint/sm.genesis)

Usage
-----

See [here](https://github.com/pinf/genesis.pinf.org/blob/master/.pgs/vortex/WORKSPACE.md) for instructions on how to boot the [Development Workspace](http://devcomp.org).


Provenance
==========

Original source logic [UNLICENSED](http://unlicense.org/) by [Christoph Dorn](http://christophdorn.com).
