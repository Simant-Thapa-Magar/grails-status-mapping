package np.com.simant



class DepartmentController {
    DepartmentService departmentService
    def index(){
    def departmentList=departmentService.getAllDepartment()
        [departmentList:departmentList]
    }
    def create(){

    }
    def save(){
        departmentService.saveDepartment(params)
        flash.message="Department detail saved"
        redirect(action:'index')
    }
    def delete(){
        departmentService.deleteDepartment(params.long('id'))
        flash.message="Department detail deleted"
        redirect(action:'index')
    }
    def edit(){
        def departmentEdit=departmentService.getDepartment(params.long('id'))
        [departmentList: departmentEdit]
    }
    def update(){
        departmentService.saveDepartment(params)
        flash.message="Department details updated"
        redirect(action: 'index')
    }
}
