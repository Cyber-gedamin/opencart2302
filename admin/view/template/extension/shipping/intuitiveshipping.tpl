<!doctype html> 

<?php echo $header; ?>

<?php echo $column_left; ?>

<div id="content">

  <?php //if (!$rates && !$status) { ?>
  <!--<div class="welcome">
    <a class="btn btn-oca" href="<?php echo $action_add; ?>"><?php echo $text['button_welcome']; ?></a>
  </div>-->
  <?php //} else { ?>      
  
  <div id="is-header">
    <div class="container">
      <div class="row">
        <h1 class="img-responsive pull-left">Shipping</h1>
        <ul class="nav nav-pills pull-right">
          <li class="active"><a role="button" class="btn btn-default" href="#tab-rates" data-toggle="tab"><?php echo $text['tab_rate']; ?></a></li>
          <li><a role="button" class="btn btn-default" href="#tab-combinations" data-toggle="tab"><?php echo $text['tab_combination']; ?></a></li>
          <li><a role="button" class="btn btn-default" href="#tab-settings" data-toggle="tab"><?php echo $text['tab_settings']; ?></a></li>
          <li><button class="btn btn-info" data-toggle="modal" data-target="#modalInfo"><i class="fa fa-question-circle"></i></button></li>
        </ul>
      </div>
    </div>
  </div>

  <div id="is-wrap">
    
    <div id="is-content" class="container">

      <div id="notification" class="row">
        <?php if ($success) { ?><div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?> <button type="button" class="close" data-dismiss="alert">&times;</button></div><?php } ?>
        <?php if ($error) { ?><div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error; ?> <button type="button" class="close" data-dismiss="alert">&times;</button></div><?php } ?>
        <?php if (!$status) { ?><div class="alert alert-warning"><i class="fa fa-exclamation-circle"></i> <?php echo $text['text_notification_status']; ?> <button type="button" class="close" data-dismiss="alert">&times;</button></div><?php } ?>
        <?php if ($test) { ?><div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text['text_notification_test']; ?> <button type="button" class="close" data-dismiss="alert">&times;</button></div><?php } ?>
      </div>

      <div class="tab-content">
        <div id="tab-rates" class="tab-pane active">
          <div class="row">
            <h2><?php echo $text['heading_rates']; ?></h2>
            <div class="box">
              <form id="rates" action="<?php echo $action_delete; ?>" method="post">
                <table id="rates" class="table table-hover table-responsive">
                  <thead>
                    <tr>
                      <th class="text-left">&nbsp;</th>
                      <th class="text-left"><?php echo $text['column_description']; ?></th>
                      <th class="text-left"><?php echo $text['column_name']; ?></th>
                      <th class="text-left"><?php echo $text['column_status']; ?></th>
                      <th class="text-left"><?php echo $text['column_group']; ?></th>
                      <th class="text-right">&nbsp;</th>
                    </tr>
                    <tr id="filter">
                      <th><div class="is-checkbox"><input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);" id="select-rate-all" style="styled"><label for="select-rate-all">&nbsp;</label></th>
                      <th><input type="text" name="filter_description" value="" placeholder="<?php echo $text['placeholder_filter_description']; ?>" class="form-control filter" /></th>
                      <th><input type="text" name="filter_name" value="" placeholder="<?php echo $text['placeholder_filter_name']; ?>" class="form-control filter" /></th>
                      <th>
                        <select name="filter_status" class="form-control filter">
                          <option value=""><?php echo $text['placeholder_filter_status']; ?></option>
                          <option value="1"><?php echo $text['text_on']; ?></option>
                          <option value="0"><?php echo $text['text_off']; ?></option>
                        </select>
                      </th>
                      <th><input type="text" name="filter_group" value="" placeholder="<?php echo $text['placeholder_filter_group']; ?>" class="form-control filter" /></th>
                      <th class="text-right"><a role="button" id="clearFilter" class="btn btn-default"><?php echo $text['button_filter']; ?></a></th>
                    </tr>
                  </thead>
                  <tbody id="rates-body">
                    <?php if ($rates) { ?>
                      <?php foreach ($rates as $rate) { ?>
                      <tr data-rate-edit="<?php echo $rate['edit']; ?>" id="rate<?php echo $rate['rate_id']; ?>">
                        <td class="text-left"><div class="is-checkbox"><input type="checkbox" name="selected[]" value="<?php echo $rate['rate_id']; ?>" id="select-rate-<?php echo $rate['rate_id']; ?>" style="styled"><label for="select-rate-<?php echo $rate['rate_id']; ?>">&nbsp;</label></div></td>
                        <td class="text-left"><a role="button" href="<?php echo $rate['edit']; ?>" class="btn btn-link"><?php echo $rate['description']; ?></td>
                        <td class="text-left"><a role="button" href="<?php echo $rate['edit']; ?>" class="btn btn-link"><?php echo $rate['name']; ?></td>
                        <td class="text-left"><?php echo $rate['status']; ?></td>
                        <td class="text-left"><?php echo $rate['group']; ?></td>
                        <td class="text-right">&nbsp;</td>
                      </tr>
                      <?php } ?>
                    <?php } else { ?>
                      <tr>
                        <td colspan="7" class="text-center"><?php echo $text['text_no_results']; ?></td>
                      </tr>
                    <?php } ?>
                  </tbody>
                  <tfoot id="rates-footer">
                    <tr>
                      <td class="text-right" colspan="7">
                        <div class="pull-right">
                          <div class="btn-group">
                            <button type="button" class="btn btn-default" data-toggle="modal" data-target="#modalImport"><?php echo $text['button_import']; ?></button>
                            <button type="button" class="btn btn-default" data-toggle="modal" data-target="#modalExport"><?php echo $text['button_export']; ?></button>
                          </div>
                          <a class="btn btn-oca" href="<?php echo $action_add; ?>"><?php echo $text['button_add']; ?></a>
                        </div>
                        <a role="button" class="btn btn-danger pull-left" onclick="if (confirm('<?php echo $text['text_warning_delete']; ?>')) { $('#rates').submit(); }"><?php echo $text['button_delete']; ?></a>
                      </td>
                    </tr>
                  </tfoot>
                </table>
              </form>
            </div>
          </div>
        </div>

        <div id="tab-combinations" class="tab-pane">
          <div class="row">
            <h2><?php echo $text['heading_combinations']; ?></h2>
            <div class="box">
              <table id="combinations" class="table table-responsive table-hover">
                <thead>
                  <tr>
                    <th class="text-left"><?php echo $text['column_sort_order']; ?></th>
                    <th class="text-left"><?php echo $text['column_title_display']; ?></th>
                    <th class="text-left" style="width: 35%"><?php echo $text['column_formula']; ?></th>
                    <th class="text-left"><?php echo $text['column_method']; ?></th>
                    <th>&nbsp;</th>
                  </tr>
                </thead>
                <tbody>
                  <?php $combination_row = 1; ?>
                  <?php if ($combinations) { ?>
                    <?php foreach ($combinations as $combination) { ?>
                      <tr id="combination-<?php echo $combination_row; ?>">
                        <td>
                          <input type="text" name="combinations[<?php echo $combination_row; ?>][sort_order]" class="form-control save" value="<?php echo $combination['sort_order']; ?>" />
                        </td>
                        <td>
                          <select name="combinations[<?php echo $combination_row; ?>][title_display]" class="form-control save" onchange="$(this).val() == '4' ? $('.combination-title-<?php echo $combination_row; ?>').fadeIn('slow') : $('.combination-title-<?php echo $combination_row; ?>').hide();">
                            <?php foreach ($title_display as $param_key => $param) { ?>
                              <?php if ($param_key == $combination['title_display']) { ?>
                                <option value="<?php echo $param_key; ?>" selected="selected"><?php echo $param; ?></option>
                              <?php } else { ?>
                                <option value="<?php echo $param_key; ?>"><?php echo $param; ?></option>
                              <?php } ?>
                            <?php } ?>
                          </select>
                          <?php foreach ($languages as $lang) { ?>
                          <div class="input-group combination-title-<?php echo $combination_row; ?>" style="<?php if ($combination['title_display'] !== '4') { ?>display: none;<?php } ?>">
                            <input type="text" name="combinations[<?php echo $combination_row; ?>][title][<?php echo $lang['code']; ?>]" value="<?php echo (isset($combination['title'][$lang['code']]) ? $combination['title'][$lang['code']] : ''); ?>" placeholder="<?php echo $text['placeholder_name']; ?>" class="form-control save" />
                            <span class="input-group-addon"><?php echo $lang['name']; ?></span>
                          </div>
                          <?php } ?>
                        </td>
                        <td>
                          <input type="text" name="combinations[<?php echo $combination_row; ?>][formula]" class="form-control save" value="<?php echo $combination['formula']; ?>" placeholder="<?php echo $text['placeholder_formula']; ?>" />
                          <span id="error-combinations-<?php echo $combination_row; ?>-formula" class="rate-error" style="display: none;"></span>
                        </td>
                        <td>
                          <select name="combinations[<?php echo $combination_row; ?>][method]" class="form-control save">
                            <?php foreach ($combination_method as $param_key => $param) { ?>
                              <?php if ($param_key == $combination['method']) { ?>
                                <option value="<?php echo $param_key; ?>" selected="selected"><?php echo $param; ?></option>
                              <?php } else { ?>
                                <option value="<?php echo $param_key; ?>"><?php echo $param; ?></option>
                              <?php } ?>
                            <?php } ?>
                          </select>
                        </td>
                        <td style="text-align: right !important;"><button type="button" class="btn btn-danger" onclick="$('#combination-<?php echo $combination_row; ?>').remove(); autosave();"><i class="fa fa-minus-circle"></i></button></td>
                      </tr>
                      <?php $combination_row++; ?>
                    <?php } ?>
                  <?php } ?>
                </tbody>
                <tfoot>
                  <tr id="combination-footer">
                    <td colspan="5" style="text-align: right !important;"><button type="button" class="btn btn-oca" onclick="addCombination();"><?php echo $text['button_add_combination']; ?></button></td>
                  </tr>
                </tfoot>
              </table>
            </div>
          </div>

          <div class="row">
            <div class="box">
              <?php echo $text['help_combinations']; ?>
            </div>
          </div>
        </div>

        <div id="tab-settings" class="tab-pane">
          <div class="row">
            <h2><?php echo $text['heading_settings']; ?></h2>
            <div class="box">
              <div class="form-horizontal">
                <div class="form-group">
                  <label for="system" class="col-md-3 control-label"><span data-toggle="tooltip" data-placement="bottom" title="<?php echo $text['tooltip_status']; ?>"><?php echo $text['entry_status']; ?></span></label>
                  <div class="col-md-9">
                    <input type="hidden" name="status" value="<?php echo $status; ?>" class="save" />
                    <div class="btn-group toggle" role="group">
                      <?php if ($status) { ?>
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
                  <label for="test" class="col-md-3 control-label"><span data-toggle="tooltip" data-placement="bottom" title="<?php echo $text['tooltip_test']; ?>"><?php echo $text['entry_test']; ?></span></label>
                  <div class="col-md-9">
                    <input type="hidden" name="test" value="<?php echo $test; ?>" class="save" />
                    <div class="btn-group toggle" role="group">
                      <?php if ($test) { ?>
                      <button type="button" data-setting="test" class="btn btn-default unlocked_active"><?php echo $text['text_off']; ?></button>
                      <button type="button" data-setting="test" class="btn btn-oca unlocked_active"><?php echo $text['text_on']; ?></button>
                      <?php } else { ?>
                      <button type="button" data-setting="test" class="btn btn-oca unlocked_inactive"><?php echo $text['text_off']; ?></button>
                      <button type="button" data-setting="test" class="btn btn-default unlocked_inactive"><?php echo $text['text_on']; ?></button>
                      <?php } ?>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <label for="title" class="col-sm-3 control-label"><span data-toggle="tooltip" data-placement="bottom" title="<?php echo $text['tooltip_title']; ?>"><?php echo $text['entry_title']; ?></span></label>
                  <div class="col-sm-9">
                    <?php foreach ($languages as $lang) { ?>
                      <div class="input-group">
                        <input type="text" name="title[<?php echo $lang['code']; ?>]" id="title" class="form-control save" value="<?php echo (isset($title[$lang['code']])) ? $title[$lang['code']] : ''; ?>" />
                        <span class="input-group-addon"><?php echo $lang['name']; ?></span>
                      </div>
                    <?php } ?>
                  </div>
                </div>
                <div class="form-group">
                  <label for="sort-order" class="col-sm-3 control-label"><span data-toggle="tooltip" data-placement="bottom" title="<?php echo $text['tooltip_sort_order']; ?>"><?php echo $text['entry_sort_order']; ?></span></label>
                  <div class="col-sm-9">
                    <input type="text" name="sort_order" id="sort-order" class="form-control save" value="<?php echo $sort_order; ?>" />
                  </div>
                </div>
                <div class="form-group">
                  <label for="sort-quotes" class="col-sm-3 control-label"><span data-toggle="tooltip" data-placement="bottom" title="<?php echo $text['tooltip_sort_quotes']; ?>"><?php echo $text['entry_sort_quotes']; ?></span></label>
                  <div class="col-sm-9">
                    <select name="sort_quotes" id="sort-quotes" class="form-control save">
                      <?php foreach ($sort_quote as $param_key => $param) { ?>
                        <?php if ($param_key == $sort_quotes) { ?>
                          <option value="<?php echo $param_key; ?>" selected="selected"><?php echo $param; ?></option>
                        <?php } else { ?>
                          <option value="<?php echo $param_key; ?>"><?php echo $param; ?></option>
                        <?php } ?>
                      <?php } ?>
                    </select>
                  </div>
                </div> 
              </div>
            </div>
          </div>
          <div class="row">
            <div class="box">
              <div class="form-horizontal">
                <div class="form-group">
                  <label for="debug" class="col-md-3 control-label"><span data-toggle="tooltip" data-placement="bottom" title="<?php echo $text['tooltip_debug']; ?>"><?php echo $text['entry_debug']; ?></span></label>
                  <div class="col-md-9">
                    <input type="hidden" name="debug" value="<?php echo $debug; ?>" class="save" />
                    <div class="btn-group toggle" role="group">
                      <?php if ($debug) { ?>
                      <button type="button" data-setting="debug" class="btn btn-default unlocked_active"><?php echo $text['text_off']; ?></button>
                      <button type="button" data-setting="debug" class="btn btn-oca unlocked_active"><?php echo $text['text_on']; ?></button>
                      <?php } else { ?>
                      <button type="button" data-setting="debug" class="btn btn-oca unlocked_inactive"><?php echo $text['text_off']; ?></button>
                      <button type="button" data-setting="debug" class="btn btn-default unlocked_inactive"><?php echo $text['text_on']; ?></button>
                      <?php } ?>
                    </div>
                    <a role="button" class="btn btn-default" data-toggle="modal" data-target="#modalDebug" onclick="reloadDebug();"><?php echo $text['button_debug_view']; ?></a>
                  </div>
                </div>
                <div class="form-group">
                  <label for="cache" class="col-md-3 control-label"><span data-toggle="tooltip" data-placement="bottom" title="<?php echo $text['tooltip_cache']; ?>"><?php echo $text['entry_cache']; ?></span></label>
                  <div class="col-md-9">
                    <input type="hidden" name="cache" value="<?php echo $cache; ?>" class="save" />
                    <div class="btn-group toggle" role="group">
                      <?php if ($cache) { ?>
                      <button type="button" data-setting="cache" class="btn btn-default unlocked_active"><?php echo $text['text_off']; ?></button>
                      <button type="button" data-setting="cache" class="btn btn-oca unlocked_active"><?php echo $text['text_on']; ?></button>
                      <?php } else { ?>
                      <button type="button" data-setting="cache" class="btn btn-oca unlocked_inactive"><?php echo $text['text_off']; ?></button>
                      <button type="button" data-setting="cache" class="btn btn-default unlocked_inactive"><?php echo $text['text_on']; ?></button>
                      <?php } ?>
                    </div>
                    <button class="btn btn-danger" onclick="clearCache();"><?php echo $text['button_cache_clear']; ?></button>
                  </div>
                </div>
                <div class="form-group">
                  <label for="backup" class="col-md-3 control-label"><span data-toggle="tooltip" data-placement="bottom" title="<?php echo $text['tooltip_backup']; ?>"><?php echo $text['entry_backup']; ?></span></label>
                  <div class="col-md-9">
                    <input type="hidden" name="backup" value="<?php echo $backup; ?>" class="save" />
                    <div class="btn-group toggle" role="group">
                      <?php if ($backup) { ?>
                      <button type="button" data-setting="backup" class="btn btn-default unlocked_active"><?php echo $text['text_off']; ?></button>
                      <button type="button" data-setting="backup" class="btn btn-oca unlocked_active"><?php echo $text['text_on']; ?></button>
                      <?php } else { ?>
                      <button type="button" data-setting="backup" class="btn btn-oca unlocked_inactive"><?php echo $text['text_off']; ?></button>
                      <button type="button" data-setting="backup" class="btn btn-default unlocked_inactive"><?php echo $text['text_on']; ?></button>
                      <?php } ?>
                    </div>
                    <a role="button" class="btn btn-default" data-toggle="modal" data-target="#modalBackup"><?php echo $text['button_backup_view']; ?></a>
                  </div>
                </div>
              </div>           
            </div>
          </div>
          <div class="row">
            <div class="box">
              <div class="form-horizontal">
                <div class="form-group">
                  <label for="ocapps_status" class="col-md-3 control-label"><span data-toggle="tooltip" data-placement="bottom" title="<?php echo $text['tooltip_ocapps_status']; ?>"><?php echo $text['entry_ocapps_status']; ?></span></label>
                  <div class="col-md-9">
                    <input type="hidden" name="ocapps_status" value="<?php echo $ocapps_status; ?>" class="save" />
                    <div class="btn-group toggle" role="group">
                      <?php if ($ocapps_status) { ?>
                      <button type="button" data-setting="ocapps_status" class="btn btn-default unlocked_active" <?php if (!$ocapps_integration) { ?>disabled="disabled"<?php } ?>><?php echo $text['text_off']; ?></button>
                      <button type="button" data-setting="ocapps_status" class="btn btn-oca unlocked_active" <?php if (!$ocapps_integration) { ?>disabled="disabled"<?php } ?>><?php echo $text['text_on']; ?></button>
                      <?php } else { ?>
                      <button type="button" data-setting="ocapps_status" class="btn btn-oca unlocked_inactive" <?php if (!$ocapps_integration) { ?>disabled="disabled"<?php } ?>><?php echo $text['text_off']; ?></button>
                      <button type="button" data-setting="ocapps_status" class="btn btn-default unlocked_inactive" <?php if (!$ocapps_integration) { ?>disabled="disabled"<?php } ?>><?php echo $text['text_on']; ?></button>
                      <?php } ?>
                    </div>
                  </div>
                </div>
                <?php if (!$ocapps_integration) { ?>
                <div class="bg-info text-center" style="padding: 20px;"><?php echo $text['text_ocapps']; ?></div>
                <?php } ?>
              </div>
            </div>
          </div>
        </div>

        <div id="tab-support" class="tab-pane">
          <div class="row">
            <h2><?php echo $text['heading_support']; ?></h2>
            <div class="box">
              <?php echo $text['help_support']; ?>
            </div>
          </div>
          <div class="row">
            <div class="box">
              <form role="form" id="support" class="form-horizontal">
                <div class="form-group">
                  <label for="email" class="col-md-3 control-label"><?php echo $text['entry_email']; ?></label>
                  <div class="col-md-9">
                    <input type="email" value="<?php echo $email; ?>" name="email" id="email" class="form-control" disabled>
                  </div>
                </div>
                <div class="form-group">
                  <label for="order-id" class="col-md-3 control-label"><?php echo $text['entry_order_id']; ?></label>
                  <div class="col-md-9">
                    <input type="text" name="order_id" id="order-id" class="form-control">
                  </div>
                </div>
                <div class="form-group">
                  <label for="enquiry" class="col-md-3 control-label"><?php echo $text['entry_enquiry']; ?></label>
                  <div class="col-md-9">
                    <textarea name="enquiry" id="enquiry" class="form-control" style="height: 300px;" placeholder="<?php echo $text['placeholder_enquiry']; ?>"></textarea>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-md-12 text-right">
                    <button type="button" class="btn btn-oca" id="supportSubmit" <?php if ($demo) { ?>disabled="disabled"<?php } ?>><?php echo $text['button_submit']; ?></button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>    
  </div>
  
  <?php //} ?>
  
</div>

<div id="is-footer">
  <?php echo $text['text_footer']; ?>
</div>

<!-- Loading / Saving Screens -->
<div id="load" class="loading" style="display:none">
	<div class="background"></div>
	<div class="foreground">
		<p><?php echo $text['text_loading']; ?></p>
		<span><i class="fa fa-spinner fa-spin fa-3x"></i></span>
	</div>
</div>

<div id="save" class="loading" style="display:none">
	<div class="background"></div>
	<div class="foreground">
		<p><?php echo $text['text_saving']; ?></p>
		<span><i class="fa fa-spinner fa-spin fa-3x"></i></span>
	</div>
</div>

<!-- Modals -->
<div class="modal fade" id="modalWelcome" role="dialog">
	<div class="modal-dialog modal-md">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title"><?php echo $text['modal_welcome_header']; ?></h4>
			</div>
			<div class="modal-body">
        <?php echo $text['modal_welcome_body']; ?>
			</div>
			<div class="modal-footer">
        <a class="btn btn-oca btn-block" href="<?php echo $action_add; ?>"><?php echo $text['button_welcome']; ?></a>
      </div>
		</div>
	</div>
</div>

<div class="modal fade" id="modalInfo" role="dialog">
	<div class="modal-dialog modal-md">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title"><?php echo $text['modal_info_header']; ?></h4>
			</div>
			<div class="modal-body">
        <?php echo $text['modal_info_body']; ?>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-link" data-dismiss="modal"><?php echo $text['button_close']; ?></button>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="modalDebug" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title"><?php echo $text['modal_debug_header']; ?></h4>
			</div>
			<div class="modal-body">
        <?php echo $text['modal_debug_body']; ?>
        <textarea wrap="off" readonly="readonly" id="debug-log" class="form-control" style="height: 350px;"><?php echo $debug_log; ?></textarea>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-link" data-dismiss="modal"><?php echo $text['button_close']; ?></button>
        <button type="button" class="btn btn-danger" onclick="clearDebug();"><?php echo $text['button_debug_clear']; ?></button>
        <a class="btn btn-default" href="<?php echo $debug_download; ?>" target="_blank"><?php echo $text['button_debug_download']; ?></a>
        <button type="button" class="btn btn-default" onclick="reloadDebug();"><?php echo $text['button_debug_reload']; ?></button>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="modalBackup" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title"><?php echo $text['modal_backup_header']; ?></h4>
			</div>
			<div class="modal-body">
        <?php echo $text['modal_backup_body']; ?>
        <table class="table table-hover table-responsive">
          <thead>
            <tr>
              <th class="text-left"><?php echo $text['column_backup_comment']; ?></th>
              <th class="text-right"><?php echo $text['column_backup_date']; ?></th>
              <th class="text-right">&nbsp;</th>
            </tr>
          </thead>
          <tbody>
            <?php foreach ($backups as $value) { ?>
            <tr>
              <td class="text-left"><?php echo $value['comment']; ?></td>
              <td class="text-right"><?php echo $value['date']; ?></td>
              <td class="text-right">
                <a href="<?php echo $backup_restore; ?>&file=<?php echo $value['file']; ?>" class="btn btn-default"><?php echo $text['button_backup_restore']; ?></a>
                <a role="button" onclick="if (confirm('<?php echo $text['text_warning_backup_delete']; ?>')) { window.location.replace('<?php echo $backup_clear; ?>&file=<?php echo $value['file']; ?>'); }" class="btn btn-danger"><?php echo $text['button_backup_clear']; ?></a>
              </td>
            </tr>
            <?php } ?>
          </tbody>
        </table>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-link" data-dismiss="modal"><?php echo $text['button_close']; ?></button>
        <button type="button" class="btn btn-danger" onclick="if (confirm('<?php echo $text['text_warning_backup_delete']; ?>')) { window.location.replace('<?php echo $backup_clear_all; ?>'); }"><?php echo $text['button_backup_clear_all']; ?></button>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="modalImport" role="dialog">
	<div class="modal-dialog modal-md">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title"><?php echo $text['modal_import_header']; ?></h4>
			</div>
			<div class="modal-body">
        <form role="form" action="<?php echo $action_import; ?>" method="post" enctype="multipart/form-data" id="import">
          <div class="form-group">
            <input type="file" name="import" class="form-control" />
          </div>
        </form>
        <?php echo $text['modal_import_body']; ?>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-link" data-dismiss="modal"><?php echo $text['button_close']; ?></button>
        <button type="button" class="btn btn-default" onclick="$('#import').submit();"><?php echo $text['button_import']; ?></button>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="modalExport" role="dialog">
	<div class="modal-dialog modal-md">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title"><?php echo $text['modal_export_header']; ?></h4>
			</div>
			<div class="modal-body">
        <?php echo $text['modal_export_body']; ?>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-link" data-dismiss="modal"><?php echo $text['button_close']; ?></button>
        <a class="btn btn-default" href="<?php echo $action_export; ?>" target="_blank"><?php echo $text['button_export']; ?></a>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript"><!--
	function autosave(field_name) {
    var field_array = 'input[name=\''+ field_name +'\'], select[name=\''+ field_name +'\'], textarea[name=\''+ field_name +'\']';

    $.ajax({
			url: 'index.php?route=extension/<?php echo $type; ?>/<?php echo $extension; ?>/autosave&<?php echo $token; ?>',
			data: $('.save'),
			type: 'post',
			dataType: 'json',
			beforeSend: function() {
				$(field_array).parent().removeClass('has-error');
				$(field_array).parent().addClass('has-warning');
			},
			complete: function() {
				$(field_array).parent().removeClass('has-warning');
			},
			success: function(json) {
				$('.alert-success, .alert-warning, .alert-attention, .alert-danger, .alert-info').remove();

				if (json['error']) {
					$(field_array).parent().addClass('has-error');
          $.each(json['error'], function(key, value) {
            $('#error-'+ key.replace(/_/g, '-')).html(value);
            $('#error-'+ key.replace(/_/g, '-')).show();
					});
        } else {
          $(field_array).parent().addClass('has-success');
          setTimeout(function() { $(field_array).parent().removeClass('has-success'); }, 3000);
          $('.rate-error').hide();
        }
			}
		});
	}
//--></script>

<script type="text/javascript"><!--
	var combination_row = <?php echo isset($combination_row) ? $combination_row : 1; ?>;
  function addCombination() {
		html  = '<tr id="combination-'+ combination_row +'">';
    html += ' <td><input type="text" name="combinations['+ combination_row +'][sort_order]" value="" class="form-control save" /></td>';
    html += ' <td><select name="combinations['+ combination_row +'][title_display]" class="form-control save" onchange="$(this).val() == \'4\' ? $(\'.combination-title-'+ combination_row +'\').fadeIn(\'slow\') : $(\'.combination-title-'+ combination_row +'\').hide();">';
    <?php foreach ($title_display as $param_key => $param) { ?>
    html += '     <option value="<?php echo $param_key; ?>"><?php echo $param; ?></option>';
    <?php } ?>
    html += ' </select>';
    <?php foreach ($languages as $lang) { ?>
    html += ' <div class="input-group combination-title-'+ combination_row +'" style="display: none;">';
    html += '  <input type="text" name="combinations['+ combination_row +'][title][<?php echo $lang['code']; ?>]" value="" placeholder="<?php echo $text['text_name']; ?>" class="form-control save" />';
    html += '  <span class="input-group-addon"><?php echo $lang['name']; ?></span>';
    html += ' </div>';
    <?php } ?>
    html += ' </td>';
    html += ' <td><input type="text" name="combinations['+ combination_row +'][formula]" class="form-control save" value="" placeholder="<?php echo $text['placeholder_formula']; ?>" />';
    html += ' <span id="error-combinations-'+ combination_row +'-formula" class="rate-error" style="display: none;"></span></td>';
    html += ' <td><select name="combinations['+ combination_row +'][method]" class="form-control save">';
    <?php foreach ($combination_method as $param_key => $param) { ?>
    html += '     <option value="<?php echo $param_key; ?>"><?php echo $param; ?></option>';
    <?php } ?>
    html += ' </select></td>';
    html += ' <td style="text-align: right !important;"><a class="btn btn-danger" onclick="$(\'#combination-'+ combination_row +'\').remove(); autosave();"><i class="fa fa-minus-circle"></i></a></td>';
    html += '</tr>';

    $('#combinations>tbody').append(html);

    combination_row++;

    $("select.chzn-done").removeAttr("style", "").removeClass("chzn-done").addClass("form-control save").data("chosen", null).next().remove();
    $('.save').change(function() { autosave($(this).attr('name')); });
    tooltips();
	}
//--></script>

<script type="text/javascript"><!--
	function clearDebug() {
		$.ajax({
			url: 'index.php?route=extension/<?php echo $type; ?>/<?php echo $extension; ?>/clearDebug&<?php echo $token; ?>',
			type: 'post',
			dataType: 'json',
			beforeSend: function() {
				$('#load').show();
			},
			complete: function() {
				$('#load').hide();
			},
			success: function(json) {
				$('.alert-success, .alert-warning, .alert-attention, .alert-danger, .alert-info').remove();

				if (json['success']) {
					$('#modalDebug .modal-body').prepend('<div class="alert alert-success"><i class="fa fa-check-circle"></i> '+ json['success'] +' <button type="button" class="close" data-dismiss="alert">&times;</button></div>');
					$('#debug-log').val('');
				}
			}
		});
	}
//--></script>

<script type="text/javascript"><!--
	function reloadDebug() {
		$.ajax({
			url: 'index.php?route=extension/<?php echo $type; ?>/<?php echo $extension; ?>/reloadDebug&<?php echo $token; ?>',
			type: 'post',
			dataType: 'json',
			beforeSend: function() {
				$('#load').show();
			},
			complete: function() {
				$('#load').hide();
			},
			success: function(json) {
				$('.alert-success, .alert-warning, .alert-attention, .alert-danger, .alert-info').remove();

				if (json['error']) {
					$('#modalDebug>.modal-body').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> '+ json['error'] +' <button type="button" class="close" data-dismiss="alert">&times;</button></div>');
				}

				if (json['success']) {
					$('#modalDebug>.modal-body').prepend('<div class="alert alert-success"><i class="fa fa-check-circle"></i> '+ json['success'] +' <button type="button" class="close" data-dismiss="alert">&times;</button></div>');
					$('#debug-log').val(json['debug_log']);
				}
			}
		});
	}
//--></script>

<script type="text/javascript"><!--
	function clearCache() {
		$.ajax({
			url: 'index.php?route=extension/<?php echo $type; ?>/<?php echo $extension; ?>/clearCache&<?php echo $token; ?>',
			type: 'post',
			dataType: 'json',
			beforeSend: function() {
				$('#load').show();
			},
			complete: function() {
				$('#load').hide();
			},
			success: function(json) {
				$('.alert-success, .alert-warning, .alert-attention, .alert-danger, .alert-info').remove();

				if (json['success']) {
					$('#notification').prepend('<div class="alert alert-success"><i class="fa fa-check-circle"></i> '+ json['success'] +' <button type="button" class="close" data-dismiss="alert">&times;</button></div>');
				}
			}
		});
	}
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

    autosave();
  });
//--></script>

<script type="text/javascript"><!--
	$("select.chzn-done").removeAttr("style", "").removeClass("chzn-done").addClass("form-control save").data("chosen", null).next().remove();
	$('.save').change(function() { autosave($(this).attr('name')); });
	$('.save').keyup(function(e) { if (e.keyCode == 13) { autosave($(this).attr('name')); } });
	$('[data-toggle="modal"]').modal({show: false});
  
  function editRate() {
    $('#rates-body tr td:not(:first-child)').click(function () {
      window.location.replace($(this).parent().attr('data-rate-edit'));
    });
  }
  
  $(document).ready(editRate());
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
  $('.filter').change(function() { filter(); });
	$('.filter').keyup(function(e) { if (e.keyCode == 13) { filter(); } });
  
  $('#clearFilter').bind('click', function() {
		$('.filter').val('');
    filter();
	});

  function filter() {
    $.ajax({
			url: 'index.php?route=extension/<?php echo $type; ?>/<?php echo $extension; ?>/filter&<?php echo $token; ?>',
			data: $('.filter'),
			type: 'post',
			dataType: 'json',
			success: function(json) {
        html  = '';
        if (json['success'] && json['rates']) {
          $.each(json['rates'], function(key, value) {
            html += '<tr data-rate-edit="'+ value['edit'] +'" id="rate'+ key +'">';
            html += '  <td class="text-left"><div class="is-checkbox"><input type="checkbox" name="selected[]" value="'+ key +'" id="select-rate-'+ key +'" style="styled"><label for="select-rate-'+ key +'">&nbsp;</label></div></td>';
            html += '  <td class="text-left"><a role="button" href="'+ value['edit'] +'" class="btn btn-link">'+ value['description'] +'</td>';
            html += '  <td class="text-left"><a role="button" href="'+ value['edit'] +'" class="btn btn-link">'+ value['name'] +'</td>';
            html += '  <td class="text-left">'+ value['status'] +'</td>';
            html += '  <td class="text-left">'+ value['group'] +'</td>';
            html += '  <td class="text-right">&nbsp;</td>';
            html += '</tr>';
          });
        } else {
          html += '<tr><td colspan="5" class="text-center"><?php echo $text['text_no_results']; ?></td></tr>';
        }
        
        $('#rates-body').html(html);

        tooltips();
        editRate();
      }
		});
	};
//--></script>

<script type="text/javascript"><!--
  <?php if (!$demo) { ?>
	$('#supportSubmit').bind('click', function() {
		$.ajax({
			url: 'index.php?route=extension/<?php echo $type; ?>/<?php echo $extension; ?>/support&<?php echo $token; ?>',
			data: $('#support input[type=\'email\'], #support input[type=\'text\'], #support textarea'),
			type: 'post',
			dataType: 'json',		
			beforeSend: function() {
				$('#supportSubmit').before('<i class="loading-small fa fa-spinner fa-spin fa-2x"></i>');
			},
			complete: function() {
				$('.loading-small').remove();
			},
			success: function(json) {
				$('.alert-success, .alert-warning, .alert-attention, .alert-danger').remove();			
							
				if (json['error']) {
					$('#support').prepend('<span class="alert alert-danger text-center col-sm-12">'+ json['error'] +'</span>');						
				}
				
				if (json['success']) {
          $('#support').prepend('<span class="alert alert-success text-center col-sm-12">'+ json['success'] +'</span>');
          $('#support input[type=\'email\'], #support input[type=\'text\'], #support textarea').val('');
				}
			}
		});	
	});
  <?php } ?>
//--></script>

<script type="text/javascript"><!--
  <?php if (!$rates && !$status) { ?>
  $('#modalWelcome').modal({show: true});
  <?php } ?>
//--></script>

<?php echo $footer; ?>