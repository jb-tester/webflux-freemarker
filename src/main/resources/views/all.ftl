<#list family?map(f -> f.name) as f>
   ${f?index}     ${f} <br/>
</#list>
<a href="/persons/1">by id</a>
<a href="/persons/names/andrey">by name</a>
<a href="/persons/ages/40">by age</a>
