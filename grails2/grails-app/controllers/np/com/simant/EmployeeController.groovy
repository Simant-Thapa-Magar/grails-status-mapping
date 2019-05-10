package np.com.simant


class EmployeeController {
    EmployeeService employeeService
    def index(){
        def employeeList=employeeService.getEmployeeList(params)
        render(view:'employeeList',model:[employeeList: employeeList])
    }
    def create(){
    }

    def save(){
        employeeService.saveEmployee(params)
       // Employee employee=new Employee()
       // employee.properties=params
       // employee.save(flush:true,exitOnError:true)
        flash.message="New employee information added"
        redirect(action:'index')
    }
    def edit(){
        def employee=Employee.findById(params.long('edit_id'))
        [employeeList: employee]
    }
    def update(long id){
        employeeService.saveEmployee(params)
        //def employee=Employee.findById(id)
        //employee.properties=params
        //employee.save(flush:true,exitOnError:true)
        flash.message="Employee information updated"
        redirect(action:'index')
    }
    def delete(){
        employeeService.deleteEmployee(params)
        flash.message="Employee status changed"
        redirect(action:'index')
    }
}
