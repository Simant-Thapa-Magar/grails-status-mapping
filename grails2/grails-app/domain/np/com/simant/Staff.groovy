package np.com.simant

class Staff {
    String staffId
    String firstName
    String middleName
    String lastName
    String department
    Integer experience
    String post
    static constraints = {
        middleName nullable:true
        experience nullable: true
    }
}
