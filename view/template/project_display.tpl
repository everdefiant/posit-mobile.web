{include file="header.tpl" title=$project.name tab="projects"}
<h2>{$project.name}</h2>
<div class="project_finds">
<div id="secondary-menu">
<a href="projects">All Projects</a>
<a href="expeditions?project_id={$project.id}">Expeditions</a></p>
</div>
</div>
	{foreach from=$finds item=find}
	<div class="list-item">
		<div class="find_name"><a href="find.display?id={$find.barcode_id}">{$find.name}</a></div>
		<div class="find_time">Found opn: {$find.add_time|date_format:"%B %e, %Y %I:%M:%S"}</div>
		<div class="find_time">Updated on: {$find.modify_time|date_format:"%B %e, %Y %I:%M:%S"}</div>
		<div class="find_description">{$find.description}</div>
		<div class="find_id">{$find.barcode_id}</div>
		<div class="find_img">
		{foreach from=$find.images item=imageid}
		<img src="displayPicture?id={$imageid}&size=thumb" height=40 width=40 />
		{/foreach}
		</div>
	<!-- enable this for psychedelic color<div class="list-item"> -->
	</div>
	{/foreach}
</div>
{include file="footer.tpl"}
