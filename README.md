# Mule3.9
Mule training 15/12/2018

### Day 1: 
- The demand from dev's is increasing day by day; hence re-use is the thing that needs to be implemented.
- https://www.anypoint.mulesoft.com/ :-> Already registered 
    - use designcenter, exchange, apimanager, runtime manager from anypoint 
    - Authorized URL : http://training-american-api.cloudhub.io/flights
      - client_id:  d1374b15c6864c3682ddbed2a247a826
      - client_secret:   4a87fe7e2e43488c927372AEF981F066
      
- We cannot publish using anypoint IDE
- We cannot mocking service in anypoint ide
- Hence we have to use the Design Center

#### you can write your own APi and publish it for world on website www.programmableweb.com

#### github.com/mulesoft :-> check the API definations for eg: connectors

### Day 2:
- For mule expression language (MEL) below are some important objects and syntax:
    - MEL is nothing but java behind the scenes.
    - Syntax : expression inside #[] example: select * from american where toAirport = #[message.inboundProperties.'http.query.params'.destination] ---> this is a query written in the database connector
    
    - Few objects in MEL:
        - message : Mule message
        - server : OS
        - mule : Mule server
        - flow : flow
        
#### Importing RAML file into App/IDE following things will happen:
- IDE APIKit plugin will read RAML and create below things:
    - Auto create new XML
    - New HTTP listener
    - Validations
    - Routings
    - Exception handlers
    - API console (so no postman is needed for endpoint testing)

#### In Mule impelmentation.raml is the main raml where business logic will reside. (this file name can be anything however these are some standards from mule)

#### Managing the properties in Mule projects
- Dont hardcode the properties
- maintain props in a properties file
- locad properties file into the app
- get properties dynamically into connector using ${propName}
    Eg: if we have property : db.host = host name; then ${db.host} will return host name
    
### Day 3:
#### Accessing and modifying mule msg
- 
