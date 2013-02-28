package net.lsi

class Contact {
	String name 
	String email
	String phone 
	String address
	Date dateCreated
	Date lastUpdated

    static constraints = {
    	name blank:false, maxSize:150
    	email nullable:true, email:true
    	phone nullable:true
    	address nullable:true, maxSize:300
    }

}
