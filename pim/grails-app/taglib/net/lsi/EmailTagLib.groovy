package net.lsi

class EmailTagLib {
  static namespace = "email"

  def addressList = { attrs ->
    out << g.textField(name: "${attrs.name ?: 'default-address-field'}")
  }
}
