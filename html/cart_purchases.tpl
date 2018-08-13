<div class="purchase popup-form-info--basket">
  <div class="popup-form-info--basket">
    {* <th data-language="cart_head_img">{$lang->cart_head_img}</th> *}
    <div class="popup-form-name-row--basket popup-form-row--basket">
      <span class="popup-form-name">{$lang->cart_head_name}</span></div>
    <div class="popup-form-total-row--basket popup-form-row--basket">
      <span class="popup-form-total">{$lang->cart_head_amoun}</span></div>
    <div class="popup-form-price-row--basket popup-form-row--basket">
      <span class="popup-form-price">{$lang->cart_head_price}</span></div>
    {* <th class="text_left" data-language="cart_head_name">{$lang->cart_head_name}</th>
    <th data-language="cart_head_price">{$lang->cart_head_price}</th>
    <th data-language="cart_head_amoun">{$lang->cart_head_amoun}</th>
    <th data-language="cart_head_total">{$lang->cart_head_total}</th> *}

</div>
    <div class="popup-form-items-content--basket">
    {foreach $cart->purchases as $purchase}

            {* Product image *}
            {* <td class="purchase_image">
                {$image = $purchase->product->images|first}
                <a href="{$lang_link}products/{$purchase->product->url}">
                    {if $image}
                        <img src="{$image->filename|resize:50:50}" alt="{$purchase->product->name|escape}" title="{$purchase->product->name|escape}">
                    {else}
                        <img width="50" height="50" src="design/{$settings->theme}/images/no_image.png" alt="{$purchase->product->name|escape}" title="{$purchase->product->name|escape}">
                    {/if}
                </a>
            </td> *}

            {* Product name *}
          <div class="popup-form-items-row">
            <div class="popup-items-name-row">
                <a class="purchase_name popup-items-name" href="{$lang_link}products/{$purchase->product->url}">{$purchase->product->name|escape}</a>
                <i>{$purchase->variant->name|escape}</i>
                {if $purchase->variant->stock == 0}<span class="preorder_label">{$lang->product_pre_order}</span>{/if}
            </div>


            {* Price per unit *}
            {* <td>
                <span class="nowrap"></span>
            </td> *}

            {* Quantity *}
            <td class="purchase_amount">
                <div class="fn_product_amount popup-items-total {if $settings->is_preorder} fn_is_preorder{/if} amount">
                    <span class="minus">&minus;</span>
                    <input class="input_amount item-amount" type="text" data-id="{$purchase->variant->id}" name="amounts[{$purchase->variant->id}]" value="{$purchase->amount}" onblur="ajax_change_amount(this, {$purchase->variant->id});" data-max="{$purchase->variant->stock}">
                    <span class="plus">&plus;</span>
                </div>
            </td>
            {* <td class="purchase_sum">
                <span class="nowrap">{($purchase->variant->price*$purchase->amount)|convert} {$currency->sign}</span>
            </td> *}
              <div class="popup-items-price-row"><span class="popup-items-price">{($purchase->variant->price)|convert} {$currency->sign} {if $purchase->variant->units}/ {$purchase->variant->units|escape}{/if}</span></div>
          </div>
            {* Extended price *}


            {* Remove button *}
            {* <td class="purchase_remove">
                <a href="{$lang_link}cart/remove/{$purchase->variant->id}" onclick="ajax_remove({$purchase->variant->id});return false;" title="{$lang->cart_remove}">
                    {include file='svg.tpl' svgId='remove_icon'}
                </a>
            </td>
        </tr> *}
    {/foreach}
</div>
    {* Discount *}
    {* {if $user->discount}
        <tr>
            <td></td>
            <td class="text_left" data-language="cart_discount">{$lang->cart_discount}</td>
            <td></td>
            <td></td>
            <td>{$user->discount}%</td>
            <td></td>
        </tr>
    {/if} *}

    {* Coupon *}
    {* {if $coupon_request}
        {if $cart->coupon_discount > 0}
            <tr>
                <td></td>
                <td class="text_left" data-language="cart_coupon">{$lang->cart_coupon}</td>
                <td></td>
                <td>{$cart->coupon->coupon_percent|escape} %</td>
                <td>&minus; {$cart->coupon_discount|convert} {$currency->sign|escape}</td>
                <td></td>
            </tr>
        {/if}
    {/if} *}

    <tfoot>
        <tr>
            {* {if $coupon_request}
                <td colspan="3" class="coupon text_left"> *}
                {* Coupon *}

                    {* Coupon error messages *}
                    {* {if $coupon_error}
                        <div class="message_error">
                            {if $coupon_error == 'invalid'}
                                {$lang->cart_coupon_error}
                            {/if}
                        </div>
                    {/if}
                    {if $cart->coupon->min_order_price > 0}
                        <div class="message_success">
                            {$lang->cart_coupon} {$cart->coupon->code|escape} {$lang->cart_coupon_min} {$cart->coupon->min_order_price|convert} {$currency->sign|escape}
                        </div>
                    {/if} *}

                    {* Coupon field *}
                    {* <input class="fn_coupon input_coupon" type="text" name="coupon_code" value="{$cart->coupon->code|escape}" placeholder="{$lang->cart_coupon}">

                    <input class="coupon_button fn_sub_coupon" type="button" value="{$lang->cart_purchases_coupon_apply}"> *}
                {* </td>
            {/if} *}

            {* <td {if $coupon_request}colspan="2"{else}colspan="5"{/if} class="purchase_total"> *}
                {* Total *}
                <div class="popup-form-row popup-form-row--basket-info">
                  <div class="basket-info"><span class="cart_total_pricetext-count text-count">Количество товаров</span><span class="total-items-in-basket" disabled="disabled">{$cart->total_products}</span></div>
                  <div class="basket-info"><span class="cart_total_price text-sum">{$lang->cart_total_price}:</span><span class="total-price-in-basket total_sum nowrap">{$cart->total_price|convert} {$currency->sign|escape}</span></div>
                </div>
                {* <span data-language="cart_total_price">{$lang->cart_total_price}:</span>
                <span class="total_sum nowrap">{$cart->total_price|convert} {$currency->sign|escape}</span> *}
            {* </td> *}

            {* <td></td>
        </tr>
    </tfoot>
</table> *}
          <div class="button-wrap button-wrap--basket">
            <button class="btn btn--black btn-call-me">Оформить заказ</button>
            <button class="btn btn-large btn--white">Продолжить покупки</button>
            <div class="action-link-row action-link-row--basket">
              <svg class="icon icon-close icon-close-basket " onclick="ajax_remove({$purchase->variant->id});return false;">
                <use xlink:href="/design/{$settings->theme}/img/svg/symbol/sprite.svg#close"></use>
              </svg>
              <a class="action-link--clear"  onclick="closeBasket(); ajax_remove({$purchase->variant->id});return false;">  очистить</a>
            </div>
          </div>
