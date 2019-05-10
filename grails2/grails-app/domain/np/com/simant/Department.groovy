package np.com.simant

class Department {
    String departmentId
    String name
    int employeeNumber
    static constraints = {
        employeeNumber nullable:true
    }
}
