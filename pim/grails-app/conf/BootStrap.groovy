import net.lsi.User

class BootStrap {

    def init = { servletContext ->
      100.times {
        new User(name: "user$it").save()
      }
    }
    def destroy = {
    }
}
