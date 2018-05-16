# Core Data

## SQL

* Structured Query Language is a language. 
* Used for relational databases

* PostgreSQL, SQLite, MySQL

## Other methods of Data Persistance

* NSUserDefaults, text file, keychain for sensitive data.

## Core Data

* It is a framework built by apple.
* It can be used on "any" apple product with OS.
* It *can* use SQLite to persist data. 
  - For iOS this is the only option if we want to persist data, for mac we can use xml files. 
* It's mostly used to persist data, but you don't have to use it for that.
* Core data is just for *local* data persistance. 

## Alternatives

* Realm, realm is more cross platform.

## Core Data Stack

ORM - Object Relational Mapping
Core Data is not an ORM.

Allows us to program with Objects, and persist objects, rathar than writing any sql or database code.

https://cocoacasts.com/exploring-the-core-data-stack

## Creating Managed Objects

* Every entity in our model, will end up as an `NSManagedObject`.
* To create a new managed object, we need a context, and we need an entity description.

## Getting managed objects

* NSFetchRequest, just requesting the model object from core data.
* NSFetchedResultsController helps get and display the data.
