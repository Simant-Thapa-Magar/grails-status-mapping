package np.com.simant

class Employee {
/*
    String employeeId
*/
    String firstName
    String middleName
    String lastName
    String department
    Address address
/*
    int age
*/
/*
    String address
*/
/*
    String contactNumber
*/
    String status=StatusList.DRAFT.toString()
    Date createdDate
    Date updatedDate
    Long createdBy
    Long updatedBy

    static constraints = {
        middleName nullable: true
        address nullable: true
        createdBy nullable: true
        updatedBy nullable: true
        createdDate nullable: true
        updatedDate nullable: true
    }
    def beforeInsert(){
        createdDate=new Date()
        createdBy=10
    }
    def beforeUpdate(){
        updatedDate=new Date()+1
        updatedBy=111
    }
}
