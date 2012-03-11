package es.codemotion

import groovy.time.*

class Contact {

    String name
    String surname1
    String surname2

    GenderType gender

    String address
    String city
    String zipCode
    String country

    String idCard

    String email
    String telephone
    String mobile

    Date birthDate

    Date dateCreated
    Date lastUpdated


    static constraints = {
        name        nullable:false, blank: false
        surname1    nullable:false, blank: false
        surname2    nullable:true,  blank: true
        gender      nullable:false, blank: false

        address     nullable: true,  blank: true
        city        nullable: true,  blank: true
        zipCode     nullable: true,  blank: true,  length: 5
        idCard      nullable: true,  blank: true,  unique: true
        email       nullable: false, blank: false, email: true
        telephone   nullable: true,  blank: false, validator: { val, obj ->
                return val ? val[0] == 9 : true
        }
        mobile      nullable: true, blank: false, validator: { val, obj ->
                return val ? val[0] == 6 : true
        }
        birthDate   nullable: true,  blank: true
    }

    static transients = ['age']

    static mappings = {
    }

    def getAge(){
        TimeDuration age = TimeCategory.minus(new Date(), birthDate)
        return age
    }

}

enum GenderType {
    MALE,
    FEMALE
}
