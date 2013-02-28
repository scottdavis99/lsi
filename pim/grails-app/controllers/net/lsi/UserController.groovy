package net.lsi


class UserController {
	def scaffold = User

	def login = {}

    def index() { }

    def authenticate = {
    	println "inside authenticate"
    	//User user = User.findByLoginAndPassword(params.login, params.password)
    	User user = new User()
    	user.login = "btgaston"
    	user.email = "btgaston@yahoo.com"
    	user.name = "Brian Gaston"
	    if(user){
	      session.user = user
	      flash.message = "Hello ${user.name}!"
	      redirect(controller:"user", action:"list")      
	    }else{
	      flash.message = "Please try again."
	      redirect(action:"login")
	    }
    }

}

