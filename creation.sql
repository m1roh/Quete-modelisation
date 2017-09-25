#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: user
#------------------------------------------------------------

CREATE TABLE user(
        id    int (11) Auto_increment  NOT NULL ,
        name  Varchar (250) NOT NULL ,
        email Varchar (50) NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: organization
#------------------------------------------------------------

CREATE TABLE organization(
        id          int (11) Auto_increment  NOT NULL ,
        name        Varchar (250) NOT NULL ,
        website_url Varchar (250) NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: tweet
#------------------------------------------------------------

CREATE TABLE tweet(
        id      int (11) Auto_increment  NOT NULL ,
        content Varchar (140) NOT NULL ,
        id_user Int NOT NULL ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table:     appartient
#------------------------------------------------------------

CREATE TABLE appartient(
        id      Int NOT NULL ,
        id_user Int NOT NULL ,
        PRIMARY KEY (id ,id_user )
)ENGINE=InnoDB;

ALTER TABLE tweet ADD CONSTRAINT FK_tweet_id_user FOREIGN KEY (id_user) REFERENCES user(id);
ALTER TABLE appartient ADD CONSTRAINT FK_appartient_id FOREIGN KEY (id) REFERENCES organization(id);
ALTER TABLE appartient ADD CONSTRAINT FK_appartient_id_user FOREIGN KEY (id_user) REFERENCES user(id);
