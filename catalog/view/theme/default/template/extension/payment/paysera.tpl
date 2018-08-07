<link href="catalog/view/theme/stylesheet/paysera/checkout.css" rel="stylesheet" />
<script src="catalog/view/javascript/paysera/checkout.js" type="text/javascript"></script>

<div class="content">
    <form action="<?php echo $action; ?>" method="post" id="wtp-checkout">
        <h3><?php echo $text_chosen; ?></h3>

        <?php echo $payment_methods; ?>
        <input type="hidden" name="paysera_payment_method" />

        <div class="pull-right">
            <button id="button-confirm"
                    class="btn btn-primary"
                    data-loading-text="<?php echo $text_loading; ?>">
                <?php echo $button_confirm; ?>
            </button>
        </div>
    </form>
</div>
