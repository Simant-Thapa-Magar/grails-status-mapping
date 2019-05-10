package np.com.simant

import grails.gorm.transactions.Transactional

@Transactional
class EmployeeService {
    Employee getEmployee(long id){
        return Employee.findById(id)
    }
    def getEmployeeList(params){
        def allList=Employee.createCriteria().list(){
        if(params?.status){
            eq('status',params?.status)
        }
        }
        return allList
    }
    def saveEmployee(params){
        Employee employee
        def id=params.long('id')
            if(id!=null){
                employee=getEmployee(params.long('id'))
            }
        if(!employee){
            employee=new Employee()
        }
        employee.properties=params
        employee.save(flush:true,failOnError:true)
    }
    def deleteEmployee(params){
        Employee employee=getEmployee(params.long('id'))
        employee.status=params.status
        employee.save(flush:true,exitOnError:true)
    }
}
