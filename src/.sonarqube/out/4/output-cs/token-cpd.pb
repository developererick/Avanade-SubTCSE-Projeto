¤
iC:\Projetos\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Api\Controllers\EmployeeRoleController.cs
	namespace		 	
Avanade		
 
.		 
SubTCSE		 
.		 
Projeto		 !
.		! "
Api		" %
.		% &
Controllers		& 1
{

 
[ 
Route 

(
 
$str 3
)3 4
]4 5
[ 

ApiVersion 
( 
$str 
, 

Deprecated 
=  !
false" '
)' (
]( )
[ 
ApiController 
] 
[ 
ApiExplorerSettings 
( 
	GroupName "
=# $
$str% )
)) *
]* +
public 

class "
EmployeeRoleController '
:( )
ControllerBase* 8
{ 
[ 	
HttpPost	 
( 
Name 
= 
$str '
)' (
]( )
[ 	
Consumes	 
( 
MediaTypeNames  
.  !
Application! ,
., -
Json- 1
)1 2
]2 3
[ 	 
ProducesResponseType	 
( 
typeof $
($ %
EmployeeRoleDto% 4
)4 5
,5 6
StatusCodes6 A
.A B
Status201CreatedB R
)R S
]S T
[ 	 
ProducesResponseType	 
( 
StatusCodes )
.) *(
Status500InternalServerError* F
)F G
]G H
public 
async 
Task 
< 
IActionResult '
>' (
CreateEmployeeRole) ;
(; <
[< =
FromBody= E
]E F
EmployeeRoleDtoG V
employeeRoleDtoW f
)f g
{ 	
var "
employeeRoleAppService &
=' (
new) ,"
EmployeeRoleAppService- C
(C D
)D E
;E F
var 
item 
= 
await "
employeeRoleAppService 3
.3 4 
AddEmployeeRoleAsync4 H
(H I
employeeRoleDtoI X
)X Y
;Y Z
if 
( 
! 
item 
. 
ValidationResult %
.% &
IsValid& -
)- .
{ 
return 

BadRequest !
(! "
string" (
.( )
Join) -
(- .
$char. 2
,2 3
item4 8
.8 9
ValidationResult9 I
.I J
ErrorsJ P
)P Q
)Q R
;R S
} 
return 
Ok 
( 
) 
; 
}   	
}!! 
}"" ‹
NC:\Projetos\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Api\Program.cs
	namespace

 	
Avanade


 
.

 
SubTCSE

 
.

 
Projeto

 !
.

! "
Api

" %
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} Â 
NC:\Projetos\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Api\Startup.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Api" %
{ 
public 

class 
Startup 
{ 
public 
IConfiguration 
_configuration ,
{- .
get/ 2
;2 3
}4 5
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
_configuration 
= 
configuration *
;* +
} 	
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services   
.   
AddControllers   #
(  # $
)  $ %
;  % &
services"" 
."" 
AddApiVersioning"" %
(""% &
options## 
=>## 
{$$ 
options&& 
.&& 
ReportApiVersions&& -
=&&. /
true&&0 4
;&&4 5
options'' 
.'' /
#AssumeDefaultVersionWhenUnspecified'' ?
=''@ A
true''B F
;''F G
options(( 
.(( 
DefaultApiVersion(( -
=((. /
new((0 3

ApiVersion((4 >
(((> ?
$num((? @
,((@ A
$num((B C
)((C D
;((D E
})) 
))) 
.** #
AddVersionedApiExplorer** (
(**( )
options**) 0
=>**1 3
{++ 
options,, 
.,, 
GroupNameFormat,, +
=,,, -
$str,,. 6
;,,6 7
options-- 
.-- %
SubstituteApiVersionInUrl-- 5
=--6 7
true--8 <
;--< =
}.. 
).. 
;.. 
services00 
.00 
AddSwaggerGen00 "
(00" #
c00# $
=>00% '
{11 
c22 
.22 

SwaggerDoc22 
(22 
$str22 !
,22! "
new22# &
OpenApiInfo22' 2
{223 4
Title225 :
=22; <
$str22= Z
,22Z [
Version22\ c
=22d e
$str22f j
}22k l
)22l m
;22m n
}33 
)33 
;33 
services66 
.66 -
!AddRegisterDependenciesInjections66 6
(666 7
)667 8
;668 9
}77 	
public:: 
void:: 
	Configure:: 
(:: 
IApplicationBuilder:: 1
app::2 5
,::5 6
IWebHostEnvironment::7 J
env::K N
)::N O
{;; 	
if<< 
(<< 
env<< 
.<< 
IsDevelopment<< !
(<<! "
)<<" #
)<<# $
{== 
app>> 
.>> %
UseDeveloperExceptionPage>> -
(>>- .
)>>. /
;>>/ 0
app?? 
.?? 

UseSwagger?? 
(?? 
)??  
;??  !
app@@ 
.@@ 
UseSwaggerUI@@  
(@@  !
c@@! "
=>@@# %
c@@& '
.@@' (
SwaggerEndpoint@@( 7
(@@7 8
$str@@8 R
,@@R S
$str@@T t
)@@t u
)@@u v
;@@v w
}AA 
appCC 
.CC 
UseHttpsRedirectionCC #
(CC# $
)CC$ %
;CC% &
appEE 
.EE 

UseRoutingEE 
(EE 
)EE 
;EE 
appGG 
.GG 
UseAuthorizationGG  
(GG  !
)GG! "
;GG" #
appII 
.II 
UseEndpointsII 
(II 
	endpointsII &
=>II' )
{JJ 
	endpointsKK 
.KK 
MapControllersKK (
(KK( )
)KK) *
;KK* +
}LL 
)LL 
;LL 
}MM 	
}NN 
}OO ¿
VC:\Projetos\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Api\WeatherForecast.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Api" %
{ 
public 

class 
WeatherForecast  
{ 
public 
DateTime 
Date 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
int		 
TemperatureC		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public 
int 
TemperatureF 
=>  "
$num# %
+& '
(( )
int) ,
), -
(- .
TemperatureC. :
/; <
$num= C
)C D
;D E
public 
string 
Summary 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} 