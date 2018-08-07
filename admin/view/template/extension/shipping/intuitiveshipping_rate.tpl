<!doctype html>
<!--
//==================================================//
// Product:	Intuitive Shipping              		    //
// Author: 	Joel Reeds                        		  //
// Company: OpenCart Addons                  		    //
// Website: http://www.opencartaddons.com        	  //
// Contact: http://www.opencartaddons.com/contact  	//
//==================================================//
-->
<?php echo $header; ?>

<?php echo $column_left; ?>

<div id="content">

  <div id="is-header">
    <div class="container">
      <div class="row">
        <div class="col-md-6 text-left">
          <a href="<?php echo $action_close; ?>"><img src="https://opencartaddons.com/image/<?php echo $type; ?>/<?php echo $extension; ?>/logo.png" alt="<?php echo $text['text_name']; ?>" class="img-responsive pull-left" /></a>
        </div>
        <div class="col-md-6 text-right">
          <a class="btn btn-link" href="<?php echo $action_close; ?>"><?php echo $text['button_close']; ?></a>
          <div class="btn-group" role="group">
            <a class="btn btn-default" <?php if ($action_previous) { ?>href="<?php echo $action_previous; ?>"<?php } ?> data-toggle="tooltip" data-placement="bottom" title="<?php echo $text['tooltip_button_previous']; ?>" <?php if (!$action_previous) { ?>disabled="disabled"<?php } ?>><i class="fa fa-chevron-left"></i></a>
            <a class="btn btn-default" <?php if ($action_next) { ?>href="<?php echo $action_next; ?>"<?php } ?> data-toggle="tooltip" data-placement="bottom" title="<?php echo $text['tooltip_button_next']; ?>" <?php if (!$action_next) { ?>disabled="disabled"<?php } ?>><i class="fa fa-chevron-right"></i></a>
          </div>
          <a class="btn btn-default" <?php if ($action_copy) { ?>href="<?php echo $action_copy; ?>"<?php } else { ?>disabled="disabled"<?php } ?>><?php echo $text['button_copy']; ?></a>
          <a class="btn btn-oca" role="button" onclick="changes = false; $('#form').submit();"><?php echo $text['button_save']; ?></a>
        </div>
      </div>
    </div>
  </div>

  <div id="is-wrap">
    <div id="is-content" class="container">

      <div id="notification" class="row">
        <?php if ($success) { ?><div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?> <button type="button" class="close" data-dismiss="alert">&times;</button></div><?php } ?>
        <?php if ($error) { ?><div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error; ?> <button type="button" class="close" data-dismiss="alert">&times;</button></div><?php } ?>
      </div>

      <form id="form" action="<?php echo $action; ?>" method="post" class="form-horizontal">

        <div class="row">
          <div class="col-md-3">
            <h2><?php echo $text['heading_rate_general']; ?></h2>
          </div>
          <div class="col-md-9">
            <div class="box">
			  <input type="hidden" name="rate_id" value="<?php echo $rate_id; ?>" />
              <div class="form-group">
                <label class="control-label col-md-3" for="description"><span data-toggle="tooltip" data-placement="bottom" title="<?php echo $text['tooltip_description']; ?>"><?php echo $text['entry_description']; ?></span></label>
                <div class="col-md-9">
                  <input type="text" name="description" id="description" value="<?php echo $data['description']; ?>" class="form-control" placeholder="<?php echo $text['placeholder_description']; ?>" />
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-md-3" for="status"><span data-toggle="tooltip" data-placement="bottom" title="<?php echo $text['tooltip_rate_status']; ?>"><?php echo $text['entry_rate_status']; ?></span></label>
                <div class="col-md-9">
                  <input type="hidden" name="status" value="<?php echo $data['status']; ?>" />
                  <div class="btn-group toggle" role="group">
                    <?php if ($data['status']) { ?>
                    <button type="button" data-setting="status" class="btn btn-default unlocked_active"><?php echo $text['text_off']; ?></button>
                    <button type="button" data-setting="status" class="btn btn-oca unlocked_active"><?php echo $text['text_on']; ?></button>
                    <?php } else { ?>
                    <button type="button" data-setting="status" class="btn btn-oca unlocked_inactive"><?php echo $text['text_off']; ?></button>
                    <button type="button" data-setting="status" class="btn btn-default unlocked_inactive"><?php echo $text['text_on']; ?></button>
                    <?php } ?>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-md-3" for="rate-group"><span data-toggle="tooltip" data-placement="bottom" title="<?php echo $text['tooltip_group']; ?>"><?php echo $text['entry_group']; ?></span></label>
                <div class="col-md-9">
                  <input type="text" name="group" id="rate-group" value="<?php echo $data['group']; ?>" class="form-control" />
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-md-3" for="tax-class-id"><span data-toggle="tooltip" data-placement="bottom" title="<?php echo $text['tooltip_tax_class_id']; ?>"><?php echo $text['entry_tax_class_id']; ?></span></label>
                <div class="col-md-9">
                  <select name="tax_class_id" id="tax-class-id" class="form-control">
                    <?php foreach ($tax_classes as $tax_class) { ?>
                      <?php if ($tax_class['tax_class_id'] == $data['tax_class_id']) { ?>
                        <option value="<?php echo $tax_class['tax_class_id']; ?>" selected="selected"><?php echo $tax_class['title']; ?></option>
                      <?php } else { ?>
                        <option value="<?php echo $tax_class['tax_class_id']; ?>"><?php echo $tax_class['title']; ?></option>
                      <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-md-3" for="total-type"><span data-toggle="tooltip" data-placement="bottom" title="<?php echo $text['tooltip_total_type']; ?>"><?php echo $text['entry_total_type']; ?></span></label>
                <div class="col-md-9">
                  <select name="total_type" id="total-type" class="form-control">
                    <?php foreach ($total_type as $param_key => $param) { ?>
                      <?php if ($param_key == $data['total_type']) { ?>
                        <option value="<?php echo $param_key; ?>" selected="selected"><?php echo $param; ?></option>
                      <?php } else { ?>
                        <option value="<?php echo $param_key; ?>"><?php echo $param; ?></option>
                      <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-md-3" for="origin"><span data-toggle="tooltip" data-placement="bottom" title="<?php echo $text['tooltip_origin']; ?>"><?php echo $text['entry_origin']; ?></span></label>
                <div class="col-md-9">
                  <input type="text" name="origin" id="origin" class="form-control" value="<?php echo $data['origin']; ?>" placeholder="<?php echo $text['placeholder_origin']; ?>" />
                  <span id="error-origin" class="rate-error" style="display: none;"></span>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-md-3">
            <h2><?php echo $text['heading_rate_display']; ?></h2>
          </div>
          <div class="col-md-9">
            <div class="box">
              <div class="form-group">
                <label class="control-label col-md-3"><span data-toggle="tooltip" data-placement="bottom" title="<?php echo $text['tooltip_name']; ?>"><?php echo $text['entry_name']; ?></span></label>
                <div class="col-md-9">
                  <?php foreach ($languages as $lang) { ?>
                  <div class="input-group">
                    <input type="text" name="name[<?php echo $lang['code']; ?>]" id="name" value="<?php echo isset($data['name'][$lang['code']]) ? $data['name'][$lang['code']] : ''; ?>" class="form-control" placeholder="<?php echo $text['placeholder_name']; ?>" />
                    <span class="input-group-addon"><?php echo $lang['name']; ?></span>
                  </div>
                  <?php } ?>
                </div>
              </div>
              <div class="form-group">
                <label for="sort-order" class="control-label col-md-3"><span data-toggle="tooltip" data-placement="bottom" title="<?php echo $text['tooltip_rate_sort_order']; ?>"><?php echo $text['entry_sort_order']; ?></span></label>
                <div class="col-md-9">
                  <input type="text" name="sort_order" id="sort-order" value="<?php echo $data['sort_order']; ?>" class="form-control" />
                </div>
              </div>
            </div>
          </div>
        </div>
        
        <?php $x = 1; ?>
        <?php foreach ($geo_zones as $geo_zone_id => $geo_zone) { ?>
        <div class="row">
          <?php if ($x > 1) { ?>
          <div class="col-md-3 hidden-sm hidden-xs">
            &nbsp;
          </div>
          <?php } else { ?>
          <div class="col-md-3">
            <h2><?php echo $text['heading_rate_cost']; ?></h2>
          </div>
          <?php } ?>
          <div class="col-md-9">
            <div class="box">
              <div class="clearfix">
                <h3 class="pull-left"><?php echo $geo_zone; ?></h3>
                <a role="button" class="btn btn-link pull-right edit" onclick="toggleGeoZone(<?php echo $geo_zone_id; ?>);"><?php echo $text['button_edit']; ?></a>
              </div>
              <div id="shipping-<?php echo $geo_zone_id; ?>" <?php if (empty($data['shipping'][$geo_zone_id]['rates'])) { ?>style="display: none;"<?php } ?>>
                <div class="form-group">
                  <label class="control-label col-md-3" for="shipping-<?php echo $geo_zone_id; ?>-rate-type"><span data-toggle="tooltip" data-placement="bottom" title="<?php echo $text['tooltip_rate_type']; ?>"><?php echo $text['entry_rate_type']; ?></span></label>
                  <div class="col-md-9">
                    <div class="input-group">
                      <select name="shipping[<?php echo $geo_zone_id; ?>][rate_type]" id="shipping-<?php echo $geo_zone_id; ?>-rate-type" class="form-control" onclick="toggleRateType(<?php echo $geo_zone_id; ?>);">
                      <?php foreach ($rate_types as $key => $value) { ?>
                        <?php if (!empty($value)) { ?>
                          <optgroup label="<?php echo $text['text_rate_group_' . $key]; ?>">
                          <?php foreach ($value as $param_key => $param) { ?>
                            <?php if (isset($data['shipping'][$geo_zone_id]['rate_type']) && $param_key == $data['shipping'][$geo_zone_id]['rate_type']) { ?>
                              <option value="<?php echo $param_key; ?>" selected="selected"><?php echo $param; ?></option>
                            <?php } else { ?>
                              <option value="<?php echo $param_key; ?>"><?php echo $param; ?></option>
                            <?php } ?>
                          <?php } ?>
                          </optgroup>
                        <?php } ?>
                      <?php } ?>
                      </select>
                      <span class="input-group-addon"><a role="button" data-toggle="modal" data-target="#modalRateType" rel="tooltip" data-placement="bottom" title="<?php echo $text['text_example']; ?>"><i class="fa fa-info-circle"></i></a></span>
                    </div>
                  </div>
                </div>
                <div id="shipping-<?php echo $geo_zone_id; ?>-shipping-factor" class="form-group" <?php if (!isset($data['shipping'][$geo_zone_id]['rate_type']) || strpos($data['shipping'][$geo_zone_id]['rate_type'], 'dim_weight') === false) { ?>style="display: none;"<?php } ?>>
                  <label class="control-label col-md-3" for="shipping-<?php echo $geo_zone_id; ?>-shipping-factor"><span data-toggle="tooltip" data-placement="bottom" title="<?php echo $text['tooltip_shipping_factor']; ?>"><?php echo $text['entry_shipping_factor']; ?></span></label>
                  <div class="col-md-9">
                    <div class="input-group">
                      <input type="text" name="shipping[<?php echo $geo_zone_id; ?>][shipping_factor]" id="shipping-<?php echo $geo_zone_id; ?>-shipping-factor" class="form-control" value="<?php echo isset($data['shipping'][$geo_zone_id]['shipping_factor']) ? $data['shipping'][$geo_zone_id]['shipping_factor'] : ''; ?>" />
                      <span class="input-group-addon"><a role="button" data-toggle="modal" data-target="#modalShippingFactor" rel="tooltip" data-placement="bottom" title="<?php echo $text['text_example']; ?>"><i class="fa fa-info-circle"></i></a></span>
                    </div>
                    <span id="error-shipping-<?php echo $geo_zone_id; ?>-shipping-factor" class="rate-error" style="display: none;"></span>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-md-3" for="shipping-<?php echo $geo_zone_id; ?>-currency"><span data-toggle="tooltip" data-placement="bottom" title="<?php echo $text['tooltip_rate_currency']; ?>"><?php echo $text['entry_currency']; ?></span></label>
                  <div class="col-md-9">
                    <select name="shipping[<?php echo $geo_zone_id; ?>][currency]" id="shipping-<?php echo $geo_zone_id; ?>-currency" class="form-control" onchange="toggleCurrency(<?php echo $geo_zone_id; ?>);">
                      <?php if (!isset($data['shipping'][$geo_zone_id]['currency'])) { $data['shipping'][$geo_zone_id]['currency'] = $config_currency; } ?>
                      <?php foreach ($currencies as $currency) { ?>
                      <?php if (isset($data['shipping'][$geo_zone_id]['currency']) && $currency['code'] == $data['shipping'][$geo_zone_id]['currency']) { ?>
                        <option value="<?php echo $currency['code']; ?>" selected="selected"><?php echo $currency['title']; ?></option>
                      <?php } else { ?>
                        <option value="<?php echo $currency['code']; ?>"><?php echo $currency['title']; ?></option>
                      <?php } ?>
                      <?php } ?>
                    </select>
                  </div>
                </div>
                <div id="shipping-<?php echo $geo_zone_id; ?>-rates" class="form-group" <?php if (isset($data['shipping'][$geo_zone_id]['rate_type']) && strpos($data['shipping'][$geo_zone_id]['rate_type'], 'cart_') === false && strpos($data['shipping'][$geo_zone_id]['rate_type'], 'product_') === false) { ?>style="display: none;"<?php } ?>>
                  <label class="control-label col-md-3"><?php echo $text['entry_rates']; ?> <a role="button" data-toggle="modal" data-target="#modalRates" rel="tooltip" data-placement="bottom" title="<?php echo $text['text_example']; ?>"><i class="fa fa-info-circle"></i></a></label>
                  <div class="col-md-9">
                    <table id="shipping-<?php echo $geo_zone_id; ?>" class="rate-rows table table-responsive table-hover">
                      <thead>
                        <tr>
                          <th><?php echo $text['column_rates_max']; ?> <span class="shipping-<?php echo $geo_zone_id; ?>-rate-unit"></span></th>
                          <th><?php echo $text['column_rates_cost']; ?> <span class="shipping-<?php echo $geo_zone_id; ?>-rate-cost"></span></th>
                          <th><?php echo $text['column_rates_per']; ?> <span class="shipping-<?php echo $geo_zone_id; ?>-rate-unit"></span></th>
                          <th>&nbsp;</th>
                        </tr>
                      </thead>
                      <tbody>
                        <?php if (!empty($data['shipping'][$geo_zone_id]['rates'])) { ?>
                          <?php foreach ($data['shipping'][$geo_zone_id]['rates'] as $key => $value) { ?>
                          <tr>
                            <td>
                              <input type="text" name="shipping[<?php echo $geo_zone_id; ?>][rates][<?php echo $key; ?>][max]" class="form-control" value="<?php echo $value['max']; ?>" placeholder="<?php echo $text['placeholder_rates_max']; ?>" />
                              <span id="error-shipping-<?php echo $geo_zone_id; ?>-rates-max-<?php echo $key; ?>" class="rate-error" style="display: none;"></span>
                            </td>
                            <td>
                              <input type="text" name="shipping[<?php echo $geo_zone_id; ?>][rates][<?php echo $key; ?>][cost]" class="form-control" value="<?php echo $value['cost']; ?>" placeholder="<?php echo $text['placeholder_rates_cost']; ?>" />
                              <span id="error-shipping-<?php echo $geo_zone_id; ?>-rates-cost-<?php echo $key; ?>" class="rate-error" style="display: none;"></span>
                            </td>
                            <td>
                              <input type="text" name="shipping[<?php echo $geo_zone_id; ?>][rates][<?php echo $key; ?>][per]" class="form-control" value="<?php echo $value['per']; ?>" />
                            </td>
                            <td class="text-right"><button type="button" class="btn btn-danger" onclick="$(this).parent().parent().remove();"><i class="fa fa-minus-circle"></i></button></td>
                          </tr>
                          <?php } ?>
                        <?php } ?>
                      </tbody>
                      <tfoot>
                        <tr id="shipping-<?php echo $geo_zone_id; ?>-rates-footer"><td colspan="3">&nbsp;</td><td class="text-right"><button type="button" onclick="addRatesRow(<?php echo $geo_zone_id; ?>);" class="btn btn-oca"><i class="fa fa-plus-circle"></i></button></td></tr>
                      </tfoot>
                    </table>
                    <span id="error-shipping-<?php echo $geo_zone_id; ?>-rates" class="rate-error" style="display: none;"></span>
                  </div>
                </div>
                <div id="shipping-<?php echo $geo_zone_id; ?>-shipping-method" class="form-group" <?php if (!isset($data['shipping'][$geo_zone_id]['rate_type']) || (strpos($data['shipping'][$geo_zone_id]['rate_type'], 'cart_') !== false || strpos($data['shipping'][$geo_zone_id]['rate_type'], 'product_') !== false)) { ?>style="display: none;"<?php } ?>>
                  <label class="control-label col-md-3" for="shipping-<?php echo $geo_zone_id; ?>-shipping-method"><span data-toggle="tooltip" data-placement="bottom" title="<?php echo $text['tooltip_shipping_method']; ?>"><?php echo $text['entry_shipping_method']; ?></span></label>
                  <div class="col-md-9">
                    <input type="text" name="shipping[<?php echo $geo_zone_id; ?>][shipping_method]" id="shipping-<?php echo $geo_zone_id; ?>-shipping-method" class="form-control" value="<?php echo isset($data['shipping'][$geo_zone_id]['shipping_method']) ? $data['shipping'][$geo_zone_id]['shipping_method'] : ''; ?>" placeholder="<?php echo $text['placeholder_shipping_method']; ?>" />
                    <span id="error-shipping-<?php echo $geo_zone_id; ?>-shipping-method" class="rate-error" style="display: none;"></span>
                  </div>
                </div>
                <div class="text-center">
                  <a role="button" class="btn btn-link" onclick="toggleAdvancedOptions(<?php echo $geo_zone_id; ?>);"><?php echo $text['button_advanced_options']; ?></a>
                </div>
                <div id="advanced-options-<?php echo $geo_zone_id; ?>" class="bg-info" style="display: none;">
                  <div class="form-group">
                    <label class="control-label col-md-3" for="shipping-<?php echo $geo_zone_id; ?>-final-cost"><span data-toggle="tooltip" data-placement="bottom" title="<?php echo $text['tooltip_final_cost']; ?>"><?php echo $text['entry_final_cost']; ?></span></label>
                    <div class="col-md-9">
                      <div class="input-group">
                        <select name="shipping[<?php echo $geo_zone_id; ?>][final_cost]" id="shipping-<?php echo $geo_zone_id; ?>-final-cost" class="form-control">
                          <?php foreach ($final_cost as $param_key => $param) { ?>
                            <?php if (isset($data['shipping'][$geo_zone_id]['final_cost']) && $param_key == $data['shipping'][$geo_zone_id]['final_cost']) { ?>
                              <option value="<?php echo $param_key; ?>" selected="selected"><?php echo $param; ?></option>
                            <?php } else { ?>
                              <option value="<?php echo $param_key; ?>"><?php echo $param; ?></option>
                            <?php } ?>
                          <?php } ?>
                        </select>
                        <span class="input-group-addon"><a role="button" data-toggle="modal" data-target="#modalFinalCost" rel="tooltip" data-placement="bottom" title="<?php echo $text['text_example']; ?>"><i class="fa fa-info-circle"></i></a></span>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-md-3" for="shipping-<?php echo $geo_zone_id; ?>-split"><?php echo $text['entry_split']; ?> <a role="button" data-toggle="modal" data-target="#modalSplitPackage" rel="tooltip" data-placement="bottom" title="<?php echo $text['text_example']; ?>"><i class="fa fa-info-circle"></i></a></label>
                    <div class="col-md-9">
                      <input type="hidden" name="shipping[<?php echo $geo_zone_id; ?>][split]" value="<?php echo isset($data['shipping'][$geo_zone_id]['split']) ? $data['shipping'][$geo_zone_id]['split'] : 0; ?>" />
                      <div class="btn-group toggle" role="group">
                        <?php if (isset($data['shipping'][$geo_zone_id]['split']) && $data['shipping'][$geo_zone_id]['split']) { ?>
                        <button type="button" data-setting="shipping[<?php echo $geo_zone_id; ?>][split]" class="btn btn-default unlocked_active"><?php echo $text['text_off']; ?></button>
                        <button type="button" data-setting="shipping[<?php echo $geo_zone_id; ?>][split]" class="btn btn-oca unlocked_active"><?php echo $text['text_on']; ?></button>
                        <?php } else { ?>
                        <button type="button" data-setting="shipping[<?php echo $geo_zone_id; ?>][split]" class="btn btn-oca unlocked_inactive"><?php echo $text['text_off']; ?></button>
                        <button type="button" data-setting="shipping[<?php echo $geo_zone_id; ?>][split]" class="btn btn-default unlocked_inactive"><?php echo $text['text_on']; ?></button>
                        <?php } ?>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-md-3"><span data-toggle="tooltip" data-placement="bottom" title="<?php echo $text['tooltip_cost']; ?>"><?php echo $text['entry_cost']; ?></span></label>
                    <div class="col-md-9 form-inline">
                      <input type="text" name="shipping[<?php echo $geo_zone_id; ?>][cost][min]" class="form-control" value="<?php echo isset($data['shipping'][$geo_zone_id]['cost']['min']) ? $data['shipping'][$geo_zone_id]['cost']['min'] : ''; ?>" placeholder="<?php echo $text['placeholder_cost_min']; ?>" style="width: 32%;" />
                      <input type="text" name="shipping[<?php echo $geo_zone_id; ?>][cost][max]" class="form-control" value="<?php echo isset($data['shipping'][$geo_zone_id]['cost']['max']) ? $data['shipping'][$geo_zone_id]['cost']['max'] : ''; ?>" placeholder="<?php echo $text['placeholder_cost_max']; ?>" style="width: 32%;" />
                      <input type="text" name="shipping[<?php echo $geo_zone_id; ?>][cost][add]" class="form-control" value="<?php echo isset($data['shipping'][$geo_zone_id]['cost']['add']) ? $data['shipping'][$geo_zone_id]['cost']['add'] : ''; ?>" placeholder="<?php echo $text['placeholder_cost_add']; ?>" style="width: 32%;" />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-md-3" for="shipping-<?php echo $geo_zone_id; ?>-freight-fee"><span data-toggle="tooltip" data-placement="bottom" title="<?php echo $text['tooltip_freight_fee']; ?>"><?php echo $text['entry_freight_fee']; ?></span></label>
                    <div class="col-md-9">
                      <input type="text" name="shipping[<?php echo $geo_zone_id; ?>][freight_fee]" id="shipping-<?php echo $geo_zone_id; ?>-freight-fee" value="<?php echo isset($data['shipping'][$geo_zone_id]['freight_fee']) ? $data['shipping'][$geo_zone_id]['freight_fee'] : ''; ?>" class="form-control" placeholder="<?php echo $text['placeholder_freight_fee']; ?>" />
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <?php $x++; ?>
        <?php } ?>
        
        <div class="row">
          <div class="col-md-3">
            <h2><?php echo $text['heading_rate_ocapps']; ?></h2>
          </div>
          <div class="col-md-9">
            <div class="box">
              <div class="form-group">
                <div class="col-md-12">
                  <select name="ocapps_cost" class="form-control" <?php if (!$ocapps_integration) { ?>disabled="disabled"<?php } ?> data-toggle="tooltip" data-placement="bottom" title="<?php echo $text['tooltip_ocapps_cost']; ?>">
                    <?php foreach ($ocapps_cost as $param_key => $param) { ?>
                      <?php if ($param_key == $data['ocapps_cost']) { ?>
                        <option value="<?php echo $param_key; ?>" selected="selected"><?php echo $param; ?></option>
                      <?php } else { ?>
                        <option value="<?php echo $param_key; ?>"><?php echo $param; ?></option>
                      <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <div class="form-group">
                <div class="col-md-12">
                  <select name="ocapps_requirement" class="form-control" <?php if (!$ocapps_integration) { ?>disabled="disabled"<?php } ?> data-toggle="tooltip" data-placement="bottom" title="<?php echo $text['tooltip_ocapps_requirement']; ?>">
                    <?php foreach ($ocapps_requirement as $param_key => $param) { ?>
                      <?php if ($param_key == $data['ocapps_requirement']) { ?>
                        <option value="<?php echo $param_key; ?>" selected="selected"><?php echo $param; ?></option>
                      <?php } else { ?>
                        <option value="<?php echo $param_key; ?>"><?php echo $param; ?></option>
                      <?php } ?>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <?php if (!$ocapps_integration) { ?>
              <div class="bg-info text-center" style="padding: 20px;"><?php echo $text['text_ocapps']; ?></div>
              <?php } ?>
            </div>
          </div>
        </div>
        
        <div class="row">
          <div class="col-md-3">
            <h2><?php echo $text['heading_rate_requirements']; ?></h2>
          </div>
          <div class="col-md-9">
            <div class="box">
              <div class="form-group">
                <div class="col-md-12">
                  <div class="input-group">
                    <select name="requirement_match" class="form-control">
                      <?php foreach ($requirement_match as $param_key => $param) { ?>
                        <?php if ($param_key == $data['requirement_match']) { ?>
                        <option value="<?php echo $param_key; ?>" selected="selected"><?php echo $param; ?></option>
                        <?php } else { ?>
                        <option value="<?php echo $param_key; ?>"><?php echo $param; ?></option>
                        <?php } ?>
                      <?php } ?>
                    </select>
                    <span class="input-group-addon"><a role="button" data-toggle="modal" data-target="#modalRequirementMatch" rel="tooltip" data-placement="bottom" title="<?php echo $text['text_example']; ?>"><i class="fa fa-info-circle"></i></a></span>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <div class="col-md-12">
                  <div class="input-group">
                    <select name="requirement_cost" class="form-control">
                      <?php foreach ($requirement_cost as $param_key => $param) { ?>
                        <?php if ($param_key == $data['requirement_cost']) { ?>
                        <option value="<?php echo $param_key; ?>" selected="selected"><?php echo $param; ?></option>
                        <?php } else { ?>
                        <option value="<?php echo $param_key; ?>"><?php echo $param; ?></option>
                        <?php } ?>
                      <?php } ?>
                    </select>
                    <span class="input-group-addon"><a role="button" data-toggle="modal" data-target="#modalRequirementCost" rel="tooltip" data-placement="bottom" title="<?php echo $text['text_example']; ?>"><i class="fa fa-info-circle"></i></a></span>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <table id="requirement-rows" class="table table-responsive table-hover">
                  <thead>
                    <tr>
                      <th><?php echo $text['column_requirement_type']; ?></th>
                      <th><?php echo $text['column_requirement_operation']; ?></th>
                      <th><?php echo $text['column_requirement_value']; ?></th>
                      <th>&nbsp;</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php if (!empty($data['requirements'])) { ?>
                      <?php foreach ($data['requirements'] as $key => $value) { ?>
                        <tr>
                          <td id="requirements-<?php echo $key; ?>-type">
                            <select name="requirements[<?php echo $key; ?>][type]" class="form-control" onchange="getRequirement('<?php echo $key; ?>')">
                            <?php foreach ($requirement_types as $group => $types) { ?>
                              <?php if (!empty($types)) { ?>
                                <optgroup label="<?php echo $text['text_requirement_group_' . $group]; ?>">
                                <?php foreach ($types as $param_key => $param) { ?>
                                  <?php if ($param_key == $value['type']) { ?>
                                    <option value="<?php echo $param_key; ?>" selected="selected"><?php echo $param; ?></option>
                                    <?php $requirement_type_group = $text['text_requirement_group_' . $group]; ?>
                                  <?php } else { ?>
                                    <option value="<?php echo $param_key; ?>"><?php echo $param; ?></option>
                                  <?php } ?>
                                <?php } ?>
                                </optgroup>
                              <?php } ?>
                            <?php } ?>
                            </select>
                            <small id="requirements-<?php echo $key; ?>-type-label"><?php echo substr($requirement_type_group, 0, -1); ?></small>
                          </td>
                          <td id="requirements-<?php echo $key; ?>-operation">
                            <select name="requirements[<?php echo $key; ?>][operation]" onchange="checkParameter('<?php echo $key; ?>')" class="form-control">
                            <?php foreach ($operations[$value['type']] as $param_key => $param) { ?>
                              <?php if ($param_key == $value['operation']) { ?>
                              <option value="<?php echo $param_key; ?>" selected="selected"><?php echo $param; ?></option>
                              <?php } else { ?>
                              <option value="<?php echo $param_key; ?>"><?php echo $param; ?></option>
                              <?php } ?>
                            <?php } ?>
                            </select>
                          </td>
                          <td id="requirements-<?php echo $key; ?>-value">
                            <?php if (!empty($values[$value['type']])) { ?>
                              <?php if (in_array($value['type'], $value_types['checkbox'])) { ?>
                                <div class="well" data-toggle="tooltip" data-placement="top" title="<?php echo isset($text['tooltip_' . $value['type']]) ? $text['tooltip_' . $value['type']] : $text['tooltip_checkbox']; ?>">
                                <?php $value['value'] = isset($value['value']) ? $value['value'] : array(); ?>
                                <?php if (!is_array($value['value'])) { $value['value'] = array($value['value']); } ?>
                                <?php foreach ($values[$value['type']] as $param_key => $param) { ?>
                                  <div class="is-checkbox"><input type="checkbox" name="requirements[<?php echo $key; ?>][value][]" id="requirement-<?php echo $key; ?>-<?php echo $param_key; ?>" value="<?php echo $param_key; ?>" <?php if (!empty($value['value']) && in_array($param_key, $value['value'])) { ?>checked="checked"<?php } ?>><label for="requirement-<?php echo $key; ?>-<?php echo $param_key; ?>"><?php echo $param; ?></label></div>
                                <?php } ?>
                                </div>
                              <?php } else { ?>
                                <select name="requirements[<?php echo $key; ?>][value]" class="form-control" data-toggle="tooltip" data-placement="top" title="<?php echo isset($text['tooltip_' . $value['type']]) ? $text['tooltip_' . $value['type']] : $text['tooltip_select']; ?>">
                                <?php foreach ($values[$value['type']] as $param_key => $param) { ?>
                                  <?php if ($param_key == $value['value']) { ?>
                                  <option value="<?php echo $param_key; ?>" selected="selected"><?php echo $param; ?></option>
                                  <?php } else { ?>
                                  <option value="<?php echo $param_key; ?>"><?php echo $param; ?></option>
                                  <?php } ?>
                                <?php } ?>
                                </select>
                              <?php } ?>
                            <?php } elseif (in_array($value['type'], $value_types['date'])) { ?>
                              <input type="text" name="requirements[<?php echo $key; ?>][value]" class="form-control date" value="<?php echo $value['value']; ?>" data-toggle="tooltip" data-placement="top" title="<?php echo isset($text['tooltip_' . $value['type']]) ? $text['tooltip_' . $value['type']] : $text['tooltip_date']; ?>" />
                            <?php } elseif (in_array($value['type'], $value_types['time'])) { ?>
                              <input type="text" name="requirements[<?php echo $key; ?>][value]" class="form-control time" value="<?php echo $value['value']; ?>" data-toggle="tooltip" data-placement="top" title="<?php echo isset($text['tooltip_' . $value['type']]) ? $text['tooltip_' . $value['type']] : $text['tooltip_time']; ?>" />
                             <?php } elseif (in_array($value['type'], $value_types['datetime'])) { ?>
                              <input type="text" name="requirements[<?php echo $key; ?>][value]" class="form-control datetime" value="<?php echo $value['value']; ?>" data-toggle="tooltip" data-placement="top" title="<?php echo isset($text['tooltip_' . $value['type']]) ? $text['tooltip_' . $value['type']] : $text['tooltip_datetime']; ?>" />
                            <?php } else { ?>
                              <input type="text" name="requirements[<?php echo $key; ?>][value]" class="form-control" value="<?php echo $value['value']; ?>" data-toggle="tooltip" data-placement="top" title="<?php echo isset($text['tooltip_' . $value['type']]) ? $text['tooltip_' . $value['type']] : $text['tooltip_text']; ?>" />
                            <?php } ?>
                            <span id="error-requirement-<?php echo $key; ?>" class="rate-error" style="display: none;"></span>
                            <?php if (!empty($parameters[$value['type']])) { ?>
                              <?php foreach ($parameters[$value['type']] as $parameter_type => $parameter) { ?>
                                <select name="requirements[<?php echo $key; ?>][parameter][<?php echo $parameter_type; ?>]" <?php if ($value['operation'] == 'add' || $value['operation'] == 'sub') { ?>style="display: none;"<?php } ?> id="requirements-<?php echo $key; ?>-parameter" class="form-control" <?php if (isset($text['tooltip_' . $value['type'] . '_' . $parameter_type])) { ?>data-toggle="tooltip" data-placement="top" title="<?php echo $text['tooltip_' . $value['type'] . '_' . $parameter_type]; ?>"<?php } ?>>
                                <?php foreach ($parameter as $param_key => $param) { ?>
                                  <?php if ($param_key == $value['parameter'][$parameter_type]) { ?>
                                  <option value="<?php echo $param_key; ?>" selected="selected"><?php echo $param; ?></option>
                                  <?php } else { ?>
                                  <option value="<?php echo $param_key; ?>"><?php echo $param; ?></option>
                                  <?php } ?>
                                <?php } ?>
                                </select>
                              <?php } ?>
                            <?php } else { ?>
                              <input type="hidden" name="requirements[<?php echo $key; ?>][parameter]" value="" />
                            <?php } ?>
                          </td>
                          <td class="text-right"><button type="button" class="btn btn-danger" onclick="$(this).parent().parent().remove();"><i class="fa fa-minus-circle"></i></button></td>
                        </tr>
                      <?php } ?>
                    <?php } ?>
                  </tbody>
                  <tfoot>
                    <tr id="<?php echo $rate_id; ?>-requirement-footer"><td colspan="3">&nbsp;</td><td class="text-right"><button type="button" onclick="addRequirement(<?php echo $rate_id; ?>);" class="btn btn-oca"><i class="fa fa-plus-circle"></i></button></td></tr>
                  </tfoot>
                </table>
              </div>
              <div class="text-center">
                <div class="is-checkbox"><input type="checkbox" name="fail_method" id="fail-method" value="1" <?php if ($data['fail_method']) { ?>checked="checked"<?php } ?>><label for="fail-method"><?php echo $text['entry_fail_method']; ?></label></div>
              </div>
            </div>
          </div>
        </div>

        <div class="row">
            <div class="col-md-3 hidden-sm hidden-xs">&nbsp;</div>
            <div class="col-md-4 col-xs-6 text-left">
              <a class="btn btn-danger" role="button" <?php if ($action_delete) { ?>onclick="if (confirm('<?php echo $text['text_warning_delete']; ?>')) { changes = false; window.location.replace('<?php echo $action_delete; ?>'); }"<?php } else { ?>disabled="disabled"<?php } ?>><?php echo $text['button_rate_delete']; ?></a>
            </div>
            <div class="col-md-5 col-xs-6 text-right">
              <a class="btn btn-link" href="<?php echo $action_close; ?>"><?php echo $text['button_close']; ?></a>
              <a class="btn btn-oca" role="button" onclick="changes = false; $('#form').submit();"><?php echo $text['button_save']; ?></a>
            </div>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>

<div id="is-footer">
  <?php echo $text['text_footer']; ?>
</div>

<!--Modals-->
<div class="modal fade" id="modalRateType" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title"><?php echo $text['modal_rate_type_header']; ?></h4>
			</div>
			<div class="modal-body">
				<?php echo $text['modal_rate_type_body']; ?>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-link" data-dismiss="modal"><?php echo $text['button_close']; ?></button>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="modalShippingFactor" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title"><?php echo $text['modal_shipping_factor_header']; ?></h4>
			</div>
			<div class="modal-body">
				<?php echo $text['modal_shipping_factor_body']; ?>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-link" data-dismiss="modal"><?php echo $text['button_close']; ?></button>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="modalRates" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title"><?php echo $text['modal_rates_header']; ?></h4>
			</div>
			<div class="modal-body">
				<?php echo $text['modal_rates_body']; ?>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-link" data-dismiss="modal"><?php echo $text['button_close']; ?></button>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="modalFinalCost" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title"><?php echo $text['modal_final_cost_header']; ?></h4>
			</div>
			<div class="modal-body">
				<?php echo $text['modal_final_cost_body']; ?>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-link" data-dismiss="modal"><?php echo $text['button_close']; ?></button>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="modalSplitPackage" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title"><?php echo $text['modal_split_package_header']; ?></h4>
			</div>
			<div class="modal-body">
				<?php echo $text['modal_split_package_body']; ?>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-link" data-dismiss="modal"><?php echo $text['button_close']; ?></button>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="modalRequirementMatch" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title"><?php echo $text['modal_requirement_match_header']; ?></h4>
			</div>
			<div class="modal-body">
				<?php echo $text['modal_requirement_match_body']; ?>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-link" data-dismiss="modal"><?php echo $text['button_close']; ?></button>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="modalRequirementCost" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title"><?php echo $text['modal_requirement_cost_header']; ?></h4>
			</div>
			<div class="modal-body">
				<?php echo $text['modal_requirement_cost_body']; ?>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-link" data-dismiss="modal"><?php echo $text['button_close']; ?></button>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript"><!--
	$('.date').datetimepicker({format: 'Y-m-d', timepicker: false, allowBlank: true, scrollInput: false});
	$('.time').datetimepicker({format: 'H:i', datepicker: false, allowBlank: true, scrollInput: false});
	$('.datetime').datetimepicker({format: 'Y-m-d H:i', allowBlank: true, scrollInput: false});
//--></script>

<script type="text/javascript"><!--
	<?php if ($rate_errors) { ?>
    <?php foreach ($rate_errors as $key => $value) { ?>
      $('#error-<?php echo str_replace('_', '-', $key); ?>').html('<i class="fa fa-exclamation-circle"></i> <?php echo $value; ?>');
      $('#error-<?php echo str_replace('_', '-', $key); ?>').show();
    <?php } ?>
  var changes = true;
  <?php } else { ?>
  var changes = false;
  <?php } ?>
//--></script>

<script type="text/javascript"><!--//
  function addRatesRow(geo_zone_id) {
    var key = new Date().getTime().toString(16);
    html  = '<tr>';
    html += '<td><input type="text" name="shipping['+ geo_zone_id +'][rates]['+ key +'][max]" value="" placeholder="<?php echo $text['placeholder_rates_max']; ?>" class="form-control" /></td>';
    html += '<td><input type="text" name="shipping['+ geo_zone_id +'][rates]['+ key +'][cost]" value="" placeholder="<?php echo $text['placeholder_rates_cost']; ?>" class="form-control" /></td>';
    html += '<td><input type="text" name="shipping['+ geo_zone_id +'][rates]['+ key +'][per]" value="" class="form-control" /></td>';
    html += '<td class="text-right"><button type="button" class="btn btn-danger" onclick="$(this).parent().parent().remove();"><i class="fa fa-minus-circle"></i></button></td>';
    html += '</tr>';

    $('#shipping-'+ geo_zone_id +'>tbody').append(html);
    
    changes = true;
  }
//--></script>

<script type="text/javascript"><!--//
  function addRequirement(rate_id) {
    var key = new Date().getTime().toString(16);
    html  = '<tr>';
    html += '<td id="requirements-'+ key +'-type">';
    html += '<select name="requirements['+ key +'][type]" class="form-control" onchange="getRequirement(\''+ key +'\');">';
    <?php foreach ($requirement_types as $group => $requirement_types) { ?>
      <?php if (!empty($requirement_types)) { ?>
        html += '<optgroup label="<?php echo $text['text_requirement_group_' . $group]; ?>">';
        <?php foreach ($requirement_types as $key => $requirement_type) { ?>
          html += '<option value="<?php echo $key; ?>"><?php echo $requirement_type; ?></option>';
        <?php } ?>
        html += '</optgroup>';
      <?php } ?>
    <?php } ?>
    html += '</select><small id="requirements-'+ key +'-type-label"></small></td>';
    html += '<td id="requirements-'+ key +'-operation"><select name="requirements['+ key +'][operation]" onchange="checkParameter(\''+ key +'\');" class="form-control"><option value=""></option></select></td>';
    html += '<td id="requirements-'+ key +'-value"><input type="hidden" name="requirements['+ key +'][value]" value="" /><input type="hidden" name="requirements['+ key +'][parameters]" value="" /></td>';
    html += '<td class="text-right"><button type="button" class="btn btn-danger" onclick="$(this).parent().parent().remove();"><i class="fa fa-minus-circle"></i></button></td>';
    html += '</tr>';

    $('#requirement-rows>tbody').append(html);
    
    changes = true;

    getRequirement(key);
  }
//--></script>

<script type="text/javascript"><!--//
  function getRequirement(key) {
    var type = $('select[name=\'requirements['+ key +'][type]\']').val();

    $.ajax({
			url: 'index.php?route=extension/<?php echo $type; ?>/<?php echo $extension; ?>/requirement&type='+ type +'&key='+ key +'&<?php echo $token; ?>',
			type: 'post',
			dataType: 'json',
			beforeSend: function() {},
			complete: function() {},
			success: function(json) {
				$('.success, .warning, .attention, .error').remove();
				$('.rate-error').hide();

				if (json['success']) {
          $('#requirements-'+ key +'-type-label').html(json['requirement_type_group']);
          var previous_operation  = $('select[name=\'requirements['+ key +'][operation]\']').val();
          var previous_value      = '';

          $('select[name=\'requirements['+ key +'][operation]\']').empty();
          $.each(json['operations'], function(id, name) {
            if (previous_operation == id) {
              $('select[name=\'requirements['+ key +'][operation]\']').append('<option value="'+ id +'" selected="selected">'+ name +'</option>');
            } else {
              $('select[name=\'requirements['+ key +'][operation]\']').append('<option value="'+ id +'">'+ name +'</option>');
            }
          });
          $('select[name=\'requirements['+ key +'][operation]\']').focus();

          html = '';
          if (json['values']) {
            if (json['value_type'] == 'checkbox') {
              html += '<div class="well"';
              if (json['value_tooltip']) { html += ' data-toggle="tooltip" data-placement="top" title="'+ json['value_tooltip'] +'"'; }
              html += '>';
              $.each(json['values'], function(id, name) {
                html += '<div class="is-checkbox"><input type="checkbox" name="requirements['+ key +'][value][]" id="requirement-'+ key +'-'+ id.trim() +'" value="'+ id.trim() +'"><label for="requirement-'+ key +'-'+ id.trim() +'">'+ name +'</label></div>';
              });
              html += '</div>';
            } else {
              html += '<select name="requirements['+ key +'][value]" class="form-control"';
              if (json['value_tooltip']) { html += ' data-toggle="tooltip" data-placement="top" title="'+ json['value_tooltip'] +'"'; }
              html += '>';
              $.each(json['values'], function(id, name) {
                if (previous_value == id.trim()) {
                  html += '<option value="'+ id.trim() +'" selected="selected">'+ name +'</option>';
                } else {
                  html += '<option value="'+ id.trim() +'">'+ name +'</option>';
                }
              });
              html += '</select>';
            }
          } else {
            html += '<input type="text" name="requirements['+ key +'][value]" class="form-control '+ json['value_type'] +'" value="'+ previous_value +'"';
            if (json['value_tooltip']) { html += ' data-toggle="tooltip" data-placement="top" title="'+ json['value_tooltip'] +'"'; }
            html += '/>';
          }

          html += '<span id="error-requirement-'+ key +'" class="rate-error" style="display: none;"></span>';

          if (json['parameters']) {
            $.each(json['parameters'], function(index, parameter) {
              html += '<select name="requirements['+ key +'][parameter]['+ index +']" id="requirements-'+ key +'-parameter" class="form-control"';
              if (json['parameter_tooltip']) { html += ' data-toggle="tooltip" data-placement="top" title="'+ json['parameter_tooltip'] +'"'; }
              html += '>';
              $.each(parameter, function(id, name) {
                html += '<option value="'+ id +'">'+ name +'</option>';
              });
              html += '</select>';
            });
          } else {
            html += '<input type="hidden" name="requirements['+ key +'][parameter]" class="form-control" value="" />';
          }

          $('#requirements-'+ key +'-value').html(html);

          $('.date').datetimepicker({format: 'Y-m-d', timepicker: false, allowBlank: true, scrollInput: false});
          $('.time').datetimepicker({format: 'H:i', datepicker: false, allowBlank: true, scrollInput: false});
          $('.datetime').datetimepicker({format: 'Y-m-d H:i', allowBlank: true, scrollInput: false});

          tooltips();

          $("select.chzn-done").removeAttr("style", "").removeClass("chzn-done").addClass("form-control save").data("chosen", null).next().remove();
        }
      }
    });
  };
//--></script>

<script type="text/javascript"><!--//
  function checkParameter(key) {
    var operation = $('select[name=\'requirements['+ key +'][operation]\']').val();

    if (operation == 'add' || operation == 'sub') {
      $('#requirements-'+ key +'-parameter').hide();
    } else {
      $('#requirements-'+ key +'-parameter').show();
    }
  }
//--></script>

<script type="text/javascript"><!--//
  function toggleAdvancedOptions(geo_zone_id) {
    $('#advanced-options-'+ geo_zone_id).toggle();
  }
  
  function toggleGeoZone(geo_zone_id) {
    $('#shipping-'+ geo_zone_id).toggle();
  }
//--></script>

<script type="text/javascript"><!--
  var tooltip_status = true;
  function tooltips() {
    if (tooltip_status) {
      $('[data-toggle="tooltip"]').tooltip({'trigger': 'hover'});
      $('[data-toggle="tooltip"]').tooltip('enable');
      $('[rel="tooltip"]').tooltip({'trigger': 'hover'});
      $('[rel="tooltip"]').tooltip('enable');
    } else {
      $('[data-toggle="tooltip"]').tooltip('disable');
      $('[rel="tooltip"]').tooltip('disable');
    }
  }

  $(document).ready(tooltips());
//--></script>

<script type="text/javascript"><!--
	$('.toggle button').click(function(){
    var parent = $(this).closest('.toggle');
    if ($(this).hasClass('unlocked_active')) {
      $('input[name=\''+ $(this).attr('data-setting') +'\']').val(0);
    } else {
      $('input[name=\''+ $(this).attr('data-setting') +'\']').val(1);
    }
    
    $('button', parent).toggleClass('unlocked_active unlocked_inactive btn-default btn-oca');
    
    changes = true;
  });
//--></script>

<script type="text/javascript"><!--
  $('#form :input, #form select').change(function() {
    changes = true;
  });

  window.onbeforeunload = function(){
    if (changes) {
      return '<?php echo $text['text_warning_unsaved_changes']; ?>';
    }
  };
//--></script>

<script type="text/javascript"><!--
  var units = [];
  <?php foreach ($rate_types as $key => $value) { ?>
    <?php if (!empty($value)) { ?>
      <?php foreach ($value as $param_key => $param) { ?>
        <?php if (isset($text['text_' . str_replace(array('cart_','product_'), '', $param_key)])) { ?>
          units['<?php echo $param_key; ?>'] = '<?php echo $text['text_' . str_replace(array('cart_','product_'), '', $param_key)]; ?>';
        <?php } ?>
      <?php } ?>
    <?php } ?>
  <?php } ?>
  
  var currencies = [];
  <?php foreach ($currencies as $currency) { ?>
  currencies['<?php echo $currency['code']; ?>'] = '<?php echo ($currency['symbol_left']) ? $currency['symbol_left'] : $currency['symbol_right']; ?>';
  <?php } ?>
  
  units['cart_total']     = currencies['<?php echo $config_currency; ?>'];
  units['product_total']  = currencies['<?php echo $config_currency; ?>'];
  
  function toggleRateType(geo_zone_id) {
    var rate_type = $('select[name=\'shipping['+ geo_zone_id +'][rate_type]\']').val();
    $('.shipping-'+ geo_zone_id +'-rate-unit').html('('+ units[rate_type] +')');
    
    if (rate_type.includes('dim_weight')) {
      $('#shipping-'+ geo_zone_id +'-shipping-factor').show();
    } else {
      $('#shipping-'+ geo_zone_id +'-shipping-factor').hide();
    }
    
    if (rate_type.includes('product_', 0) || rate_type.includes('cart_', 0)) {
      $('#shipping-'+ geo_zone_id +'-rates').show();
      $('#shipping-'+ geo_zone_id +'-shipping-method').hide();
    } else {
      $('#shipping-'+ geo_zone_id +'-rates').hide();
      $('#shipping-'+ geo_zone_id +'-shipping-method').show();
    }
  }   

  function toggleCurrency(geo_zone_id) {
    var currency = $('select[name=\'shipping['+ geo_zone_id +'][currency]\']').val();
    $('.shipping-'+ geo_zone_id +'-rate-cost').html('('+ currencies[currency] +')');
  }
  
  <?php foreach ($geo_zones as $geo_zone_id => $param) { ?>
  toggleRateType(<?php echo $geo_zone_id; ?>);
  toggleCurrency(<?php echo $geo_zone_id; ?>);  
  <?php } ?>
//--></script>

<script type="text/javascript"><!--
	$('.date').datetimepicker({format: 'Y-m-d', timepicker: false, allowBlank: true, scrollInput: false});
	$('.time').datetimepicker({format: 'H:i', datepicker: false, allowBlank: true, scrollInput: false});
	$('.datetime').datetimepicker({format: 'Y-m-d H:i', allowBlank: true, scrollInput: false});
//--></script>
<?php echo $footer; ?>