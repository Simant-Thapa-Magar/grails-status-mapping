package np.com.simant

class Address {
    String district
    String state
    String localUnit
    int wardNo
    String tole
    boolean isTemp
    String status=StatusList.DRAFT.toString()
    Employee employee
    static constraints = {
        wardNo nullable:true
        tole nullable:true
    }
}
