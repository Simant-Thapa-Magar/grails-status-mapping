package np.com.simant

enum StatusList {
    DRAFT("DRAFT"),
    TRASH("TRASH"),
    PUBLISH("PUBLISH")

    String value
    StatusList(String value){
        this.value=value
    }
    String getValue(){
        return this.value
    }
}
