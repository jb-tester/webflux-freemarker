<#-- @ftlvariable name="family" type="reactor.core.publisher.Flux<com.mytests.spring.reactive.webfluxfreemarker.Person>" -->
<h3>default location</h3>
Links:
<p><a href="/persons/ages/1">by id</a></p>
<p><a href="/persons/names/andrey">by name</a></p>
<p><a href="/persons/ages/40">by age</a></p>
<br/>
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


