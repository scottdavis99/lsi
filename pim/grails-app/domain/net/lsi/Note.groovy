package net.lsi

class Note {
  Integer id
  String user
  String visibility
  String content
  Date dateCreated
  Date lastUpdated


  static constraints = {
    content(nullable: true)
    visibility(inList: ["public", "private"])
  }
}
