README
======

What is Rebar?
-----------------

Rebar is a foundation of tools for maintaining code quality in your project.
It is composed of linters, code formatters and static-analysis tools that check
syntax and ensure that your project's source code is formatted to your
requirements.

Components:
-----------

Rebar is comprised of the following tools:

* [PHP Mess Detector](http://phpmd.org/)

Requirements
------------

Rebar requires the following:

* [PHP](https://secure.php.net/) Version 5.3.0 or greater.
* [Composer](https://getcomposer.org/).

Installation
------------

Installation instructions go here...

Documentation
-------------

Documentation overview goes here...

Contributing
------------

Rebar is an open source project. Feel free to submit pull requests for anything
you feel would help improve the project!

Running Inspections
-------------------

The inspections will be ran automatically on each commit. If any of the
inspections fail, the commit will be rejected and information will be output to
the reports folder.

If you wish to run the inspections manually, simply run
`./bin/run_all_inspections.sh`.
