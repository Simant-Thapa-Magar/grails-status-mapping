package np.com.simant

class AddressController {
    EmployeeService employeeService
    def index() {
        println "params: "+params
        params?.max=params?.max as Integer ?:20
        params?.offset=params?.offset as Integer ?:0
        List addressList=Address.createCriteria().list(params){
            if(params?.status) {
                eq('status', params.status)
            }
        }
        [addressList:addressList,total:Address.count()]
    }
    def create(){
        [eID:params.long('employeeId')]
    }
    def save() {
        Address address = new Address()
        address.properties = params
        def employee=employeeService.getEmployee(params.long('eID'))
        address.employee=employee
        address.save(flush: true, exitOnError: true)
        employee.address=address
        employee.save(flush:true,exitOnError:true)
        flash.message="New address added!!!"
        redirect(controller:'employee',action:'index')
    }
    def edit(){
    def addressList=Address.findById(params.long('addressId'))
        [addressList:addressList]
    }
    def update(long id){
    Address address=Address.findById(id)
        address.properties=params
        address.save(flush:true,exitOnError:true)
        flash.message="Address details updated"
        redirect(controller:'employee',action:'index')
    }
    def delete(){
        Address address=Address.findById(params.long('id'))
        address.status=params.status
        address.save(flush:true,exitOnError:true)
        flash.message="Address status changed"
        redirect(action:'index')
    }
}
