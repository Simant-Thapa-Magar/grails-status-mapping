package np.com.simant

import grails.gorm.transactions.Transactional

@Transactional
class StaffService {
    def getAllStaff(){
        def staffList=Staff.list()
        return staffList
    }
    Staff getSingleStaff(long id){
        return Staff.findById(id)
    }
    def saveStaff(params){
        def id=params.long('id')
        Staff staff
        if(id!=null){
            staff=getSingleStaff(id)
        }
        else{
            staff=new Staff()
        }
        staff.properties=params
        staff.save(flush:true,exitOnError:true)
    }
    def deleteStaff(long id){
        def staff=getSingleStaff(id)
        staff.delete(flush:true,exitOnError:true)
    }
}
