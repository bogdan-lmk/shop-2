{* The main page template *}
{* The canonical address of the page *}
{$canonical="" scope=parent}
<section class="sales-block">
  <div class="container column">
  <div id="fn_content" class="main">
    {* Banners *}
    {if $is_mobile === false && $is_tablet === false}
        {get_banner var=banner_group1 group='group1'}
        {if $banner_group1->items}
            <div class="fn_banner_group1 banners container">
                {foreach $banner_group1->items as $bi}
                    <div>
                        {if $bi->url}
                        <a href="{$bi->url}" target="_blank">
                            {/if}
                            {if $bi->image}
                                <img src="{$bi->image|resize:1170:390:false:$config->resized_banners_images_dir}" alt="{$bi->alt}" title="{$bi->title}"/>
                            {/if}
                            {if $bi->url}
                        </a>
                        {/if}
                    </div>
                {/foreach}
                  </div>
                </div>
              </div>
            </section>
        {/if}
    {/if}
</section>
<section class="benefits">
  <div class="container">
    <div class="content-row content-row--card justify-content-between">
      <div class="benefit-card">
        <div class="icon-wrap">
          <svg class="icon icon-bf-icon-1 bf-icons">
            <use xlink:href="/design/{$settings->theme}/img/svg/symbol/sprite.svg#bf-icon-1"></use>
          </svg>
        </div>
        <div class="benefit-card--content">
          <h3 class="benefit-card-name">Бесплатная доставка</h3>
          <p class="text benefit-card-text">Бесплатная доставка при полной предоплате. Доставка от 1 дня от 199 рублей.</p>
        </div>
      </div>
      <div class="benefit-card">
        <div class="icon-wrap">
          <svg class="icon icon-bf-icon-1 bf-icons">
            <use xlink:href="/design/{$settings->theme}/img/svg/symbol/sprite.svg#bf-icon-1"></use>
          </svg>
        </div>
        <div class="benefit-card--content">
          <h3 class="benefit-card-name">Летняя Ликвидация</h3>
          <p class="text benefit-card-text">Скидки на коллекцию 2017-2018 до 70% Торопитесь!</p>
        </div>
      </div>
      <div class="benefit-card">
        <div class="icon-wrap">
          <svg class="icon icon-bf-icon-1 bf-icons">
            <use xlink:href="/design/{$settings->theme}/img/svg/symbol/sprite.svg#bf-icon-1"></use>
          </svg>
        </div>
        <div class="benefit-card--content">
          <h3 class="benefit-card-name">Гарантия качества</h3>
          <p class="text benefit-card-text">Мы работаем с официальным поставщиком UGG Australia и гарантируем ее качество.</p>
        </div>
      </div>
    </div>
  </div>
</section>
<section class="shop-content">
<div class="container">
  <div class="content-row content-row--item justify-content-end">
    {* {if $is_mobile === false && $is_tablet === false}
        <div class="advantages">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-lg-3">
                        <div class="advantage advantage_1">
                            <span data-language="advantage_1">{$lang->advantage_1}</span>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <div class="advantage advantage_2">
                            <span data-language="advantage_2">{$lang->advantage_2}</span>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <div class="advantage advantage_3">
                            <span data-language="advantage_3">{$lang->advantage_3}</span>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <div class="advantage advantage_4">
                            <span data-language="advantage_4">{$lang->advantage_4}</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    {/if} *}

    {* Featured products *}
    {* {get_featured_products var=featured_products limit=4}
    {if $featured_products}
        <div class="h2">
            <span data-language="main_recommended_products">{$lang->main_recommended_products}</span>
        </div>

        <div class="main_products clearfix">
            {foreach $featured_products as $product}
                <div class="products_item no_padding col-sm-6 col-xl-3">
                    {include "product_list.tpl"}
                </div>
            {/foreach}

            <div class="look_all">
                <a href="{$lang_link}bestsellers" data-language="main_look_all">{$lang->main_look_all}</a>
            </div>
        </div>
    {/if} *}

    {* New products *}
  <div class="catalog">
    <div class="drop-menu-head">
      <div class="drop-menu-head-name drop-menu-head-name--catalog"><a class="drop-menu-head-heading" href="catalog.html">Каталог</a>
        <svg class="icon icon-chevron-down drop-menu-head-icon">
          <use xlink:href="/design/{$settings->theme}/img/svg/symbol/sprite.svg#chevron-down"></use>
        </svg>
        </div>
          {include file='categories.tpl'}
      </div>
    </div>
    <div class="item-content">
    {get_new_products var=new_products limit=24}
    {if $new_products}
        {* <div class="h2">
            <span data-language="main_new_products">{$lang->main_new_products}</span>
        </div> *}
        <div class="drop-menu-head drop-filter">
          <div class="drop-menu-head-name">
            <h3 class="drop-menu-head-heading">Подобрать товар</h3>
            <svg class="icon icon-chevron-down drop-menu-head-icon">
              <use xlink:href="/design/{$settings->theme}/img/svg/symbol/sprite.svg#chevron-down"></use>
            </svg>
          </div>


        <div class="item-card-row">
            {foreach $new_products as $product}
                <div class="item-card">
                    {include "product_list.tpl"}
                </div>
            {/foreach}
        </div>
    {/if}
</div>
</div>
</div>
</section>
