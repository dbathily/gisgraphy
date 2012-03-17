<#import "macros/gisgraphysearch.ftl" as gisgraphysearch>
<html>
<head>
<title>
<#if !gisfeature?? >
   <@s.text name="global.crud.create.new.feature"/>
<#else>
<@s.text name="button.edit"/> 
<#if gisfeature.name??> '${gisfeature.name}'</#if>
</#if>
</title>
</head>
<body>
<div class="clear"><br/></div>
<h1>
<#if !gisfeature?? > 
   <@s.text name="global.crud.create.new.feature"/>
<#else>
<@s.text name="button.edit"/>  
<#if gisfeature.name??> '${gisfeature.name}'</#if>
</#if> 			
</h1>
			<div class="clear"><br/></div>
<#if gisfeature?? >
	 			<@s.url id="addFeature" action="editFeature!input" includeParams="none" namespace="/admin" />
<img src="/images/add.png"/ alt="" style="padding-right:5px;vertical-align:middle;"><a href="${addFeature}"><@s.text name="global.crud.create.new.feature"/></a>
<@s.url id="deleteFeature" action="editFeature!delete" includeParams="none" namespace="/admin" />
<span style="float:right;margin-right:130px;"><@s.form action="${deleteFeature}" method="post" theme="simple" id="deleteForm">
  <@s.hidden name="featureid" value="%{gisfeature.featureId}"/>
<img src="/images/delete.png"/ alt="" style="padding-right:5px;vertical-align:middle;"><a href="#" onCLick="if (confirmDelete('place')){${'deleteForm'}.submit();}"><@s.text name="global.crud.delete.feature"/></a>
</@s.form >
</span>
<br/><br/>
</#if>
<br/><br/>
<img src="/images/required_field.png"/ alt="" style="vertical-align:middle;"/> <@s.text name="search.required.label"/>
<br/>
<@s.url id="saveurl" action="editFeature" includeParams="none" method="save" namespace="/admin" />
<@s.form action="${saveurl}" method="post" theme="simple">
<fieldset>
<legend> 
<#if !gisfeature?? >
   <@s.text name="global.crud.create.new.feature"/>
<#else>
<@s.text name="button.edit"/> 
<#if gisfeature.name??> '${gisfeature.name}'</#if>
</#if>
 </legend>
  <@s.hidden name="featureid" value="%{gisfeature.featureId}"/>


<#if  gisfeature?? && gisfeature.featureId??>
<@s.hidden name="gisfeature.featureId" value="${gisfeature.featureId?c}" theme="simple"/>
<span class="searchfield"><span class="searchfieldlabel"><@s.text name="global.FeatureId"/> : </span>${gisfeature.featureId?c}</span>
<div class="clear"></div>
</#if>
<#if gisfeature?? && gisfeature.source??>
<span class="searchfield">
			<span class="searchfieldlabel"><@s.text name="global.source"/> : </span> ${gisfeature.source}
</span>
		<div class="clear"></div>
</#if>



<span class="searchfield">
			<span class="searchfieldlabel"><img src="/images/required_field.png"/ alt="" style="vertical-align:middle;"/><@s.text name="global.name"/> : </span><@s.textfield name="gisfeature.name" value="%{gisfeature.name}" theme="simple" size="35"/>
		</span>
		<div class="clear"></div>
		
		

		<span class="searchfield">
			<span class="searchfieldlabel"><@s.text name="global.asciiName"/> : </span><@s.textfield name="gisfeature.asciiName" value="%{gisfeature.asciiName}" theme="simple" size="35"/>
		</span>
		<div class="clear"></div>

  <span class="searchfield">
			<span class="searchfieldlabel"><img src="/images/required_field.png"/ alt="" style="vertical-align:middle;"/><@s.text name="global.latitude"/> : </span>  <@s.textfield name="latitude" value="%{gisfeature.location.y}" theme="simple" size="35" required="true"/>
  </span>
  <div class="clear"></div>

<span class="searchfield">
			<span class="searchfieldlabel"><img src="/images/required_field.png"/ alt="" style="vertical-align:middle;"/><@s.text name="global.longitude"/> : </span><@s.textfield name="longitude" value="%{gisfeature.location.x}" theme="simple" size="35" required="true"/>
		</span>
		<div class="clear"></div>


		<span class="searchfield">
			<span class="searchfieldlabel"><@s.text name="global.adm1Code"/> : </span><@s.textfield name="gisfeature.adm1Code" value="%{gisfeature.adm1Code}" theme="simple" size="35"/>
		</span>
		<div class="clear"></div>
		
		
		<span class="searchfield">
			<span class="searchfieldlabel"><@s.text name="global.adm2Code"/> : </span><@s.textfield name="gisfeature.adm2Code" value="%{gisfeature.adm2Code}" theme="simple" size="35"/>
		</span>
		<div class="clear"></div>
		
		
		<span class="searchfield">
			<span class="searchfieldlabel"><@s.text name="global.adm3Code"/> : </span><@s.textfield name="gisfeature.adm3Code" value="%{gisfeature.adm3Code}" theme="simple" size="35"/>
		</span>
		<div class="clear"></div>
		
		
		<span class="searchfield">
			<span class="searchfieldlabel"><@s.text name="global.adm4Code"/> : </span><@s.textfield name="gisfeature.adm4Code" value="%{gisfeature.adm4Code}" theme="simple" size="35"/>
		</span>
		<div class="clear"></div>
		
		
		<span class="searchfield">
			<span class="searchfieldlabel"><@s.text name="global.adm1Name"/> : </span><@s.textfield name="gisfeature.adm1Name" value="%{gisfeature.adm1Name}" theme="simple" size="35"/>
		</span>
		<div class="clear"></div>
		
		
		<span class="searchfield">
			<span class="searchfieldlabel"><@s.text name="global.adm2Name"/> : </span><@s.textfield name="gisfeature.adm2Name" value="%{gisfeature.adm2Name}" theme="simple" size="35"/>
		</span>
		<div class="clear"></div>
		
		
		<span class="searchfield">
			<span class="searchfieldlabel"><@s.text name="global.adm3Name"/> : </span><@s.textfield name="gisfeature.adm3Name" value="%{gisfeature.adm3Name}" theme="simple" size="35"/>
		</span>
		<div class="clear"></div>
		
		
		<span class="searchfield">
			<span class="searchfieldlabel"><@s.text name="global.adm4Name"/> : </span><@s.textfield name="gisfeature.adm4Name" value="%{gisfeature.adm4Name}" theme="simple" size="35"/>
		</span>
		<div class="clear"></div>
		
		<span class="searchfield">
			<span class="searchfieldlabel"><@s.text name="global.FeatureClass"/> : </span><#if gisfeature?? && gisfeature.featureClass??>${gisfeature.featureClass}</#if>
		</span>
		<div class="clear"></div>
		
		<span class="searchfield">
			<span class="searchfieldlabel"><@s.text name="global.FeatureCode"/> : </span><#if gisfeature?? && gisfeature.featureCode??>${gisfeature.featureCode}</#if>
		</span>
		<div class="clear"></div>

		<span class="searchfield">
			<span class="searchfieldlabel"><@s.text name="global.FeatureClass"/> / <@s.text name="global.FeatureCode"/>: </span><@s.select listKey="name()" listValue="getObject().getClass().getSimpleName()+' ('+name()+')'" name="classcode" list="placetypes" headerValue="--I Don't know--" headerKey="" multiple="false"  theme="simple" value="gisfeature.getFeatureClass()+'_'+gisfeature.getFeatureCode()"/> <br/><img src="/images/help.png"/ alt="help" style="vertical-align:middle;padding-left:150px;padding-right:5px;"/><@s.text name="featureclasscode.explanation"/>. <@s.text name="featureclasscode.let.it.blank"/>
		</span>
		<div class="clear"></div>
		<br/>


		<span class="searchfield">
			<span class="searchfieldlabel"><img src="/images/required_field.png"/ alt="" style="vertical-align:middle;"/><@s.text name="global.country"/> : </span><@s.select listKey="iso3166Alpha2Code" listValue="name" name="gisfeature.countryCode" value="%{gisfeature.countryCode}" list="countries" headerValue="--choose--" headerKey="" multiple="false"  theme="simple" /> 
		</span>
		<div class="clear"></div>
		<br/>

		<span class="searchfield">
			<span class="searchfieldlabel"><@s.text name="global.population"/> : </span><@s.textfield name="gisfeature.population" value="%{gisfeature.population}" theme="simple" size="35"/>
		</span>
		<div class="clear"></div>
		
		<span class="searchfield">
			<span class="searchfieldlabel"><@s.text name="global.elevation"/> (<@s.text name="global.unit"/>) : </span><@s.textfield name="gisfeature.elevation" value="%{gisfeature.elevation}" theme="simple" size="35"/>
		</span>
		<div class="clear"></div>
		
		<span class="searchfield">
			<span class="searchfieldlabel"><@s.text name="global.gtopo30"/> : </span><@s.textfield name="gisfeature.gtopo30" value="%{gisfeature.gtopo30}" theme="simple" size="35"/>
		</span>
		<div class="clear"></div>
		
		
		<span class="searchfield">
			<span class="searchfieldlabel"><@s.text name="global.timeZone"/> : </span><@s.textfield name="gisfeature.timezone" value="%{gisfeature.timezone}" theme="simple" size="35"/>
		</span>
		<div class="clear"></div>
<#if !gisfeature?? > 
<@s.text name="featureid.autogenerated"/>
</#if>
<br/>
<br/>
<div style="float:right;">
<@s.url id="cancelurl" action="editSearch" includeParams="none" namespace="/admin" />
 <@s.submit value="%{getText('button.save')}"  theme="simple"/> <input type="button" value="<@s.text name="button.cancel"/>" onClick="document.location.href='${cancelurl}'"  />
<br/><br/>
</div>
</fieldset>
</@s.form>
<br/><br/>






<fieldset><legend> <@s.text name="global.zipCode"/> </legend>
<#if gisfeature?? >
	<#if gisfeature.zipCodes??>
			<@s.iterator value="gisfeature.zipCodes" id="zipCode"  status="zipCodes_status">
				<@gisgraphysearch.editZipCodeForm zipCode=zipCode last=zipCodes_status.last /> 
			</@s.iterator>
		
	</#if>
<@gisgraphysearch.addZipCodeForm gisfeatureId=gisfeature.featureId?c/>
<#else>
<@s.text name="feature.crud.save.before.add.zip" />
</#if>
</fieldset>
<br/><br/>

<fieldset><legend> <@s.text name="global.alternateNames"/> </legend>
<#if gisfeature?? >
	<#if gisfeature.alternateNames??>
			<@s.iterator value="gisfeature.alternateNames" id="name_alternate" status="alternatenames_tatus">
				<@gisgraphysearch.editAlternateNameForm name_alternate=name_alternate last=alternatenames_tatus.last /> 
			</@s.iterator>
		
	</#if>
<@gisgraphysearch.addAlternateNameForm gisfeatureId=gisfeature.featureId?c/>
<#else>
<@s.text name="feature.crud.save.before.add.alternatename" />
</#if>
</fieldset>

<script type="text/javascript" >
function deleteAjax(url,HtmlElementId){
	if (confirm('<@s.text name="global.sure"/>, <@s.text name="global.take.effects.now"/> ?')){
		new Ajax.Request(url,
			{
				onComplete: function(transport){
					$(HtmlElementId).remove()
			 	}, onFailure : function(transport){
				  	if (transport.responseText){
					  	alert("<@s.text name="can.not.delete"/> : "+transport.responseText);
					} else {
						alert("<@s.text name="can.not.delete"/>.");
			  		}
				}
			}
		);
	} 
	return false;
}

function saveAjax(form){
	if (confirm('<@s.text name="global.sure"/>, <@s.text name="global.take.effects.now"/> ?')){
		$(form).request(
    		{ onComplete: function(transport){
	  	alert("ok")
	  	} ,
   		 onFailure : function(transport){
	  	alert("an error has occured");
	  } }
   	 );
	}
	return false;
} 


function AjaxAdd(form,elementId){
	if (confirm('<@s.text name="global.sure"/>, <@s.text name="global.take.effects.now"/> ?')){
		$(form).request(
    		{ onComplete: function(transport){
		$(elementId).replace(transport.responseText);
		$(form).reset()
	  	} ,
   		 onFailure : function(transport){
	  	alert("an error has occured");
	  } }
   	 );
	}
	return false;
}
</script>
<br/>
</body>
</html>