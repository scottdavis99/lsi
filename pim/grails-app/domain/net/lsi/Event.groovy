package net.lsi

import groovy.transform.ToString

@ToString
class Event {
  Date lastUpdated
  Date dateCreated
  Date eventDate 
  String location
  String description
  User owner
  User participant
  String labels

  static constraints = {
    description maxSize: 1000
    participant nullable: true
  }
}
