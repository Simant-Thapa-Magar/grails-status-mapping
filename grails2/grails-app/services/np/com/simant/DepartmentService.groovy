package np.com.simant

import grails.gorm.transactions.Transactional

@Transactional
class DepartmentService {
    Department getDepartment(long id){
        def department=Department.findById(id)
        return department
    }
    def getAllDepartment(){
        def departmentList=Department.list()
        return departmentList
    }
    def saveDepartment(params){
        Department departmentData
        def id=params.long('id')
        if(id!=null) {
            departmentData = getDepartment(params.long('id'))
        }
        else{
            departmentData=new Department()
        }
        departmentData.properties=params
        departmentData.save(flush:true,exitOnError:true)
    }
    def deleteDepartment(long id){
        def departmentDelete=Department.findById(id)
        departmentDelete.delete(flush:true,exitOnError: true)
    }
}
