

{extends file="page.tpl"}


{block name="page_content_container"}
  <head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  </head>
<style>
.flexcard{
    display: flex;
    flex-wrap: wrap;
}

.catalogues{
    width:22%;
    border:0.50px solid lightgray;
    margin:10px;
}
.catalogues img{
  width: 100%;
  height:270px
}
.catalog-title{
  font-size:12px;
  color:rgb(62, 62, 62);
  line-height: 10px;
  padding:3px

}
.download{
  border-left:1px solid lightgray;
  color:rgb(162, 161, 161);
  padding:5px
}
.seebtn{
  font-size: 13px;
  width: 100px;
  color:black;
  border-left:1px solid lightgray;
  border-right:1px solid lightgray;
  text-align: center;

}
.title-brands{
  font-size:14px;

}
i{
  color:rgb(162, 161, 161);
  font-size: 12px;
}
a{
  color:rgb(47, 47, 47);
}
.light-element{
  padding-top: 4px;
}
.border-item{
  border-top: 0.9px solid lightgray;
  border-right: 0.50px solid lightgray;
  border-left: 0.50px solid lightgray;
  border-bottom: 0.9px solid lightgray;
}
</style>

<div class="catalogue-container">
  <div class="row ml-2">
    <div class="col-md-2 mr-2">
         <h2 class="title-brands">
           <i class="fas fa-list ">
           </i>  
           <span> {l s="Brands"}</span> 
         </h2>
         <hr>
         <ul>
          {foreach from=$brands item=item key=key name=name}
            {foreach from=$selected_brand item=selected}
              {if $selected.brandsID==$item.id}
              <a href="?brands={$selected.brandsID}"> 
                <li class="d-flex justify-content-between border-item p-1">
                    <span class="small"> {$item.name}</span> 
                    <i class="fa-solid fa-chevron-right"></i>
                </li>
              </a>
              {/if}
            {/foreach}
          {/foreach}
         </ul>
    </div>
    <div class="col-md-9">
          <div class="flexcard ">

          {foreach from=$catalogs item=item key=key name=name}
            <div class="catalogues">
                <img src={$item.cover_img}>
                <div class="d-flex justify-content-between">
                     <h5 class="catalog-title light-element"> {$item.catalog_name}</h5>
                     <a href="{$item.file_name}" class="seebtn light-element"> {l s="visualiser"} <i class="fas fa-eye"></i></a>
                     <a href="{$item.file_name}" class="download light-element" download><i class="fas fa-download"></i>
                     </a>
                </div>
            </div>
        {/foreach}
          </div>
    </div>
  </div>
</div>
{/block}

