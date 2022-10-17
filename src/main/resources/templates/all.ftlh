<#-- @ftlvariable name="family" type="reactor.core.publisher.Flux<com.mytests.spring.reactive.webfluxfreemarker.Person>" -->
<h1>default location</h1>
<h2>-------map:</h2>
<#list family?map(f -> f.name) as f>
   ${f?index}     ${f} <br/>
</#list>
<h2>-------filter:</h2>
<#list family?filter(f -> f.age>18) as f>
   ${f?index}     ${f.name} <br/>
</#list>
<h2>-------drop_while:</h2>
<#list family?drop_while(f -> f.id<3) as f>
   ${f?index}     ${f.name} <br/>
</#list>
<h2>-------take_while:</h2>
<#list family?take_while(f -> f.id<5) as f>
   ${f?index}     ${f.name} <br/>
</#list>
<h2>-------</h2>

<a href="1">by id</a>
<a href="names/andrey">by name</a>
<a href="/persons/ages/40">by age</a>
