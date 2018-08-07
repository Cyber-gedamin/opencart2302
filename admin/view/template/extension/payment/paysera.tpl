<?php echo $header; ?><?php echo $column_left; ?>

<?php if ($error_warning): ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php endif; ?>

<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <button type="submit"
                        title="<?php echo $button_save; ?>"
                        class="btn btn-primary"
                        form="form-payment"
                        data-toggle="tooltip">
                    <i class="fa fa-save"></i>
                </button>
                <a href="<?php echo $cancel; ?>"
                   title="<?php echo $button_cancel; ?>"
                   class="btn btn-default"
                   data-toggle="tooltip">
                    <i class="fa fa-reply"></i>
                </a>
            </div>

            <h1><?php echo $heading_title; ?></h1>

            <ul class="breadcrumb">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li>
                    <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
                </li>
                <?php } ?>
            </ul>
        </div>
    </div>

    <div class="container-fluid">
        <?php if ($error_warning) { ?>
        <div class="alert alert-danger alert-dismissible">
            <i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
            <button type="button" class="close" data-dismiss="alert">
                &times;
            </button>
        </div>
        <?php } ?>

        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">
                    <i class="fa fa-pencil"></i> <?php echo $text_edit; ?>
                </h3>
            </div>

            <div class="panel-body">
                <form action="<?php echo $action; ?>"
                      method="post"
                      enctype="multipart/form-data"
                      id="form-payment"
                      class="form-horizontal">
                    <ul class="nav nav-tabs" id="tabs">
                        <li class="active">
                            <a href="#tab-account" data-toggle="tab"><?php echo $tab_account; ?></a>
                        </li>
                        <li>
                            <a href="#tab-payment" data-toggle="tab"><?php echo $tab_payment; ?></a>
                        </li>
                        <li>
                            <a href="#tab-order-status" data-toggle="tab"><?php echo $tab_order_status; ?></a>
                        </li>
                        <li>
                            <a href="#tab-additions" data-toggle="tab"><?php echo $tab_additions; ?></a>
                        </li>
                    </ul>

                    <div class="tab-content">
                        <div class="tab-pane active" id="tab-account">
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-status">
                                    <?php echo $label_status; ?>
                                </label>

                                <div class="col-sm-10">
                                    <select name="paysera_status"
                                            id="input-status"
                                            class="form-control">
                                        <?php if ($paysera_status) { ?>
                                        <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                        <option value="0"><?php echo $text_disabled; ?></option>
                                        <?php } else { ?>
                                        <option value="1"><?php echo $text_enabled; ?></option>
                                        <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="entry-project">
                                    <?php echo $label_project; ?>
                                </label>

                                <div class="col-sm-10">
                                    <input type="number"
                                           name="paysera_project"
                                           id="entry-project"
                                           class="form-control"
                                           value="<?php echo $paysera_project; ?>"
                                           placeholder="<?php echo $entry_project; ?>" />

                                    <?php if ($error_project) { ?>
                                    <div class="text-danger"><?php echo $error_project; ?></div>
                                    <?php } ?>
                                </div>
                            </div>

                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="entry-sign">
                                    <?php echo $label_sign; ?>
                                </label>

                                <div class="col-sm-10">
                                    <input type="text"
                                           name="paysera_sign"
                                           id="entry-sign"
                                           class="form-control"
                                           value="<?php echo $paysera_sign; ?>"
                                           placeholder="<?php echo $entry_sign; ?>" />

                                    <?php if ($error_sign) { ?>
                                    <div class="text-danger"><?php echo $error_sign; ?></div>
                                    <?php } ?>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="entry-test">
                                    <?php echo $label_test; ?>
                                </label>

                                <div class="col-sm-10">
                                    <select name="paysera_test"
                                            id="entry-test"
                                            class="form-control">
                                        <?php if ($paysera_test) { ?>
                                        <option value="1" selected="selected"><?php echo $text_on; ?></option>
                                        <option value="0"><?php echo $text_off; ?></option>
                                        <?php } else { ?>
                                        <option value="1"><?php echo $text_on; ?></option>
                                        <option value="0" selected="selected"><?php echo $text_off; ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-sort-order">
                                    <?php echo $label_sort_order; ?>
                                </label>

                                <div class="col-sm-10">
                                    <input type="text"
                                           name="paysera_sort_order"
                                           id="input-sort-order"
                                           class="form-control"
                                           value="<?php echo $paysera_sort_order; ?>"
                                           placeholder="<?php echo $entry_sort_order; ?>" />
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane" id="tab-payment">
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-total" >
                                    <span data-toggle="tooltip" title="<?php echo $help_total; ?>">
                                        <?php echo $label_total; ?>
                                    </span>
                                </label>

                                <div class="col-sm-10">
                                    <input type="text"
                                           name="paysera_total"
                                           id="input-total"
                                           class="form-control"
                                           value="<?php echo $paysera_total; ?>"
                                           placeholder="<?php echo $entry_total; ?>" />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="label-title">
                                    <?php echo $label_title; ?>
                                </label>

                                <div class="col-sm-10">
                                    <input type="text"
                                           name="paysera_title"
                                           id="entry-title"
                                           class="form-control"
                                           value="<?php echo $paysera_title; ?>"
                                           placeholder="<?php echo $entry_title; ?>" />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="entry-description">
                                    <?php echo $label_description; ?>
                                </label>

                                <div class="col-sm-10">
                                    <input type="text"
                                           name="paysera_description"
                                           id="entry-description"
                                           class="form-control"
                                           value="<?php echo $paysera_description; ?>"
                                           placeholder="<?php echo $entry_description; ?>" />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-display">
                                    <?php echo $label_paymentlist; ?>
                                </label>

                                <div class="col-sm-10">
                                    <select name="paysera_display_payments_list"
                                            id="input-display"
                                            class="form-control">
                                        <?php if ($paysera_display_payments_list) { ?>
                                        <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                                        <option value="0"><?php echo $text_no; ?></option>
                                        <?php } else { ?>
                                        <option value="1"><?php echo $text_yes; ?></option>
                                        <option value="0" selected="selected"><?php echo $text_no; ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="category">
                                    <span data-toggle="tooltip" title="<?php echo $help_multi_select; ?>">
                                        <?php echo $entry_multi_select; ?>
                                    </span>
                                </label>

                                <div class="col-sm-10">
                                    <select name="category"
                                            id="category"
                                            class="form-control">
                                        <option value="0">
                                            <?php echo $text_select; ?>
                                        </option>
                                        <?php foreach ($paysera_countries as $id => $country) { ?>
                                        <option value="<?php echo $id; ?>">
                                            <?php echo $country ; ?>
                                        </option>
                                        <?php } ?>
                                    </select>

                                    <div id="paysera-category" class="well well-sm">
                                        <?php foreach ($paysera_selected_countries as $id => $country) { ?>
                                        <div id="category<?php echo $id; ?>">
                                            <i class="fa fa-minus-circle"></i> <?php echo $country; ?>

                                            <input type="hidden"
                                                   name="paysera_category[]"
                                                   value="<?php echo $id; ?>" />
                                        </div>
                                        <?php } ?>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-grid">
                                    <?php echo $label_grid_view; ?>
                                </label>

                                <div class="col-sm-10">
                                    <select name="paysera_grid_view" id="input-grid" class="form-control">
                                        <?php if ($paysera_grid_view) { ?>
                                        <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                                        <option value="0"><?php echo $text_no; ?></option>
                                        <?php } else { ?>
                                        <option value="1"><?php echo $text_yes; ?></option>
                                        <option value="0" selected="selected"><?php echo $text_no; ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-geo-zone">
                                    <?php echo $label_geo_zone; ?>
                                </label>

                                <div class="col-sm-10">
                                    <select name="paysera_geo_zone_id"
                                            id="input-geo-zone"
                                            class="form-control">
                                        <option value=""><?php echo $text_all_zones; ?></option>

                                        <?php foreach ($geo_zones as $geo_zone) { ?>
                                        <?php if ($geo_zone['geo_zone_id'] ==  $paysera_geo_zone_id) { ?>
                                        <option value="<?php echo $geo_zone['geo_zone_id']; ?>" selected="selected">
                                            <?php echo $geo_zone['name']; ?>
                                        </option>
                                        <?php } else { ?>
                                        <option value="<?php echo $geo_zone['geo_zone_id']; ?>">
                                            <?php echo $geo_zone['name']; ?>
                                        </option>
                                        <?php } ?>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane" id="tab-order-status">
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-new-order-status">
                                    <?php echo $label_new_order_status; ?>
                                </label>

                                <div class="col-sm-10">
                                    <select name="paysera_new_order_status_id"
                                            id="input-new-order-status"
                                            class="form-control">
                                        <?php foreach ($order_statuses as $order_status) { ?>
                                        <?php if ($order_status['order_status_id'] == $paysera_new_order_status_id) { ?>
                                        <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected">
                                            <?php echo $order_status['name']; ?>
                                        </option>
                                        <?php } else { ?>
                                        <option value="<?php echo $order_status['order_status_id']; ?>">
                                            <?php echo $order_status['name']; ?>
                                        </option>
                                        <?php } ?>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-order-status">
                                    <?php echo $label_order_status; ?>
                                </label>

                                <div class="col-sm-10">
                                    <select name="paysera_paid_status_id"
                                            id="input-order-status"
                                            class="form-control">
                                        <?php foreach ($order_statuses as $order_status) { ?>
                                        <?php if ($order_status['order_status_id'] == $paysera_paid_status_id) { ?>
                                        <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected">
                                            <?php echo $order_status['name']; ?>
                                        </option>
                                        <?php } else { ?>
                                        <option value="<?php echo $order_status['order_status_id'] ?>">
                                            <?php echo $order_status['name']; ?>
                                        </option>
                                        <?php } ?>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-canceled-order-status">
                                    <?php echo $label_canceled_status; ?>
                                </label>

                                <div class="col-sm-10">
                                    <select name="paysera_pending_status_id"
                                            id="input-canceled-order-status"
                                            class="form-control">
                                        <?php foreach ($order_statuses as $order_status) { ?>
                                        <?php if ($order_status['order_status_id'] == $paysera_pending_status_id) { ?>
                                        <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected">
                                            <?php echo $order_status['name']; ?>
                                        </option>
                                        <?php } else { ?>
                                        <option value="<?php echo $order_status['order_status_id']; ?>">
                                            <?php echo $order_status['name']; ?>
                                        </option>
                                        <?php } ?>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane" id="tab-additions">
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="entry-quality">
                                    <?php echo $label_quality; ?>
                                </label>

                                <div class="col-sm-10">
                                    <select name="paysera_quality"
                                            id="entry-quality"
                                            class="form-control">
                                        <?php if ($paysera_quality) { ?>
                                        <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                                        <option value="0"><?php echo $text_no; ?></option>
                                        <?php } else { ?>
                                        <option value="1"><?php echo $text_yes; ?></option>
                                        <option value="0" selected="selected"><?php echo $text_no; ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-owner">
                                    <?php echo $label_owner; ?>
                                </label>

                                <div class="col-sm-10">
                                    <select name="paysera_owner"
                                            id="input-owner"
                                            class="form-control">
                                        <?php if ($paysera_owner) { ?>
                                        <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                                        <option value="0"><?php echo $text_no; ?></option>
                                        <?php } else { ?>
                                        <option value="1"><?php echo $text_yes; ?></option>
                                        <option value="0" selected="selected"><?php echo $text_no; ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="entry-owner-code">
                                    <?php echo $label_owner_code; ?>
                                </label>

                                <div class="col-sm-10">
                                    <input type="text"
                                           name="paysera_owner_code"
                                           id="entry-owner-code"
                                           class="form-control"
                                           value="<?php echo $paysera_owner_code; ?>"
                                           placeholder="<?php echo $entry_owner_code; ?>" />
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<?php echo $footer; ?>
