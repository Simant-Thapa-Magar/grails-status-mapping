package np.com.simant

class StaffController {
StaffService staffService
    def index() {
    def staffList=staffService.getAllStaff()
        [staffList:staffList]
    }
    def create(){

    }
    def save(){
        staffService.saveStaff(params)
        flash.message="Staff information saved successfully !!!"
        redirect(action:'index')
    }
    def edit(){
        def staffEdit=staffService.getSingleStaff(params.long('id'))
        [staffList:staffEdit]
    }
    def delete(long id){
        staffService.deleteStaff(id)
        flash.message="Staff information deleted !!!"
        redirect(action:'index')
    }
}
