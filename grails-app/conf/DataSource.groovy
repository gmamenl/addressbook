/*dataSource {
    pooled = true
    driverClassName = "org.h2.Driver"
    username = "sa"
    password = ""
}                */

dataSource {
    pooled = true
    driverClassName = "com.mysql.jdbc.Driver"
    url = "jdbc:mysql://localhost:3306/addressbook?useUnicode=true&characterEncoding=UTF-8"
    dialect = org.hibernate.dialect.MySQL5InnoDBDialect
}

hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:mysql://localhost:3306/addressbook?useUnicode=true&characterEncoding=UTF-8"
            username = "root"
            password = "root"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:mysql://localhost:3306/addressbook?useUnicode=true&characterEncoding=UTF-8"
            username = "root"
            password = "root"
        }
    }
    production {
        dataSource {
            dbCreate = "create-drop"
            url = "jdbc:cloudbees://addressbookdb?useUnicode=true&characterEncoding=UTF-8"
            username= "gmamenl"
            password = "root"
            pooled = true
            properties {
               maxActive = -1
               minEvictableIdleTimeMillis=1800000
               timeBetweenEvictionRunsMillis=1800000
               numTestsPerEvictionRun=3
               testOnBorrow=true
               testWhileIdle=true
               testOnReturn=true
               validationQuery="SELECT 1"
            }
        }
    }
}
