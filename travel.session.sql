model place {
  id        Int      @id @default(autoincrement())
  name      String   @db.VarChar(255)
  address   String   @db.VarChar(255)
  lattitude Float  
  longitude Float
  description String  @db.VarChar(5000)
  rating    Int     @default(0)
  createdAt DateTime @default(now())
  updatedAt DateTime @updatedAt

}

model review {
    id        Int      @id @default(autoincrement())
    place_id  Int      
    user_name String   @db.VarChar(100)
    comment   String   @db.VarChar(2000) 
    rating    Int
    createdAt DateTime @default(now())
    updatedAt DateTime @updatedAt
}
DROP TABLE IF EXISTS books;

CREATE TABLE IF NOT EXISTS place (
  ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
  name VARCHAR(255),
  adress VARCHAR(255),
  lattitude FLOAT,
  longitude FLOAT,
  description VARCHAR(5000),
  rating INT default(0),
  createdAt DateTime,
  updatedAt DateTime );

DROP TABLE IF EXISTS review;

  CREATE TABLE IF NOT EXISTS review (
  ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
  place_id INT NOT NULL,
  username VARCHAR(100),
  comment VARCHAR(2000),
  createdAt DateTime,
  updatedAt DateTime );

