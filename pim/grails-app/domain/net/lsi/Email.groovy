package net.lsi

class Email {
  Date dateCreated
  Date lastUpdated
  String fromAddress
  String subject
  String body
  EmailStatus status = EmailStatus.DRAFT

  static hasMany = [
    toAddresses: String,
    ccAddresses: String,
    bccAddresses: String
  ]

  static constraints = {
    fromAddress()
    toAddresses(minSize: 1)
    ccAddresses()
    bccAddresses()
    subject(nullable: true)
    body(nullable: true)
  }
}

public enum EmailStatus {
  DRAFT("Draft"),
  SENT("Sent")

  String display

  public EmailStatus(String display) {
    this.display = display
  }

  String toString() { display }
  String getKey() { name() }
}