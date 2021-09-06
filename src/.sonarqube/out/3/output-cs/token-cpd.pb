é
hC:\Projetos\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Data\Repositories\Base\BaseRepository.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Data" &
.& '
Repositories' 3
.3 4
Base4 8
{ 
public 

abstract 
class 
BaseRepository (
<( )
TEntity) 0
,0 1
Tid2 5
>5 6
: 	
IBaseRepository
 
< 
TEntity !
,! "
Tid# &
>& '
where		 
TEntity		 
:		 
Domain		 
.		 

Aggregates		 )
.		) *

BaseEntity		* 4
<		4 5
Tid		5 8
>		8 9
{

 
private 
readonly 
IMongoCollection )
<) *
TEntity* 1
>1 2
_collection3 >
;> ?
public 
virtual 
async 
Task !
<! "
TEntity" )
>) *
Add+ .
(. /
TEntity/ 6
entity7 =
)= >
{ 	
await 
_collection 
. 
InsertOneAsync ,
(, -
entity- 3
)3 4
;4 5
return 
entity 
; 
} 	
public 
virtual 
async 
Task !
<! "
TEntity" )
>) *
FindById+ 3
(3 4
Tid4 7
id8 :
): ;
{ 	
throw 
new 
System 
. #
NotImplementedException 4
(4 5
)5 6
;6 7
} 	
} 
} Õ
pC:\Projetos\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Data\Repositories\Base\MongoDB\MongoDBContext.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Data" &
.& '
Repositories' 3
.3 4
Base4 8
.8 9
MongoDB9 @
{ 
public 

class 
MongoDBContext 
:  !
IMongoDBContext" 1
{ 
private 
readonly 
IMongoDatabase '
_mongoDatabase( 6
;6 7
public

 
MongoDBContext

 
(

 
)

 
{ 	
MongoClientSettings 
mongoClientSettings  3
=4 5
MongoClientSettings6 I
. 
FromUrl 
( 
new 
MongoUrl %
(% &
$str& (
)( )
)) *
;* +
mongoClientSettings 
.  
SslSettings  +
=, -
new 
SslSettings 
(  
)  !
{ 
EnabledSslProtocols '
=( )
System* 0
.0 1
Security1 9
.9 :
Authentication: H
.H I
SslProtocolsI U
.U V
Tls12V [
} 
; 
MongoClient 
mongoClient #
=$ %
new& )
MongoClient* 5
(5 6
settings6 >
:> ?
mongoClientSettings@ S
)S T
;T U
_mongoDatabase 
= 
mongoClient (
.( )
GetDatabase) 4
(4 5
$str5 7
)7 8
;8 9
} 	
public 
IMongoCollection 
<  
TEntity  '
>' (
GetCollection) 6
<6 7
TEntity7 >
>> ?
(? @
string@ F

collectionG Q
)Q R
{ 	
return 
_mongoDatabase !
.! "
GetCollection" /
</ 0
TEntity0 7
>7 8
(8 9
name9 =
:= >

collection? I
)I J
;J K
} 	
} 
} ß
xC:\Projetos\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Data\Repositories\EmployeeRole\EmployeeRoleRepository.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Data" &
.& '
Repositories' 3
.3 4
EmployeeRole4 @
{ 
public 

class "
EmployeeRoleRepository '
: 	
BaseRepository
 
< 
Domain 
.  

Aggregates  *
.* +
EmployeeRole+ 7
.7 8
Entities8 @
.@ A
EmployeeRoleA M
,M N
stringO U
>U V
,		 	#
IEmployeeRoleRepository		
 !
{

 
public 
override 
Task 
< 
Domain #
.# $

Aggregates$ .
.. /
EmployeeRole/ ;
.; <
Entities< D
.D E
EmployeeRoleE Q
>Q R
AddS V
(V W
DomainW ]
.] ^

Aggregates^ h
.h i
EmployeeRolei u
.u v
Entitiesv ~
.~ 
EmployeeRole	 ‹
entity
Œ ’
)
’ “
{ 	
return 
base 
. 
Add 
( 
entity "
)" #
;# $
} 	
} 
} ˜
pC:\Projetos\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Data\Repositories\Employee\EmployeeRepository.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Data" &
.& '
Repositories' 3
.3 4
Employee4 <
{ 
public 

class 
EmployeeRepository #
: 	
BaseRepository
 
< 
Domain 
.  

Aggregates  *
.* +
Employee+ 3
.3 4
Entities4 <
.< =
Employee= E
,E F
stringG M
>M N
, 	
IEmployeeRepository
 
{		 
}

 
} 