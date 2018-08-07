<?php
/**
 * 2018 Paysera
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License (AFL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/afl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to support@paysera.com so we can send you a copy immediately.
 *
 *  @author    Paysera <plugins@paysera.com>
 *  @copyright 2018 Paysera
 *  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
 *  International Registered Trademark & Property of Paysera
 */

if (!class_exists('WebToPay')) {
    require_once DIR_SYSTEM . 'library/paysera/WebToPay.php';
}

/**
 * Class ControllerExtensionPaymentPaysera
 */
class ControllerExtensionPaymentPaysera extends Controller
{
    /**
     * Default code value
     */
    const CODE = 'code';

    /**
     * Certificate
     */
    const SSL = 'SSL';

    /**
     * Empty value
     */
    const EMPTY_CODE = '';

    /**
     * New int value
     */
    const NEW_VALUE = 1;

    /**
     * Decimal places
     */
    const DECIMALS_ROUND = 2;

    /**
     * Paysera project config name
     */
    const CONFIG_PAYSERA_PROJECT = 'paysera_project';

    /**
     * Paysera project sign config name
     */
    const CONFIG_PAYSERA_PASS = 'paysera_sign';

    /**
     * Paysera test config name
     */
    const CONFIG_PAYSERA_TEST = 'paysera_test';

    /**
     * Paysera description config name
     */
    const CONFIG_PAYSERA_DESCRIPTION = 'paysera_description';

    /**
     * Paysera list config name
     */
    const CONFIG_PAYSERA_LIST = 'paysera_display_payments_list';

    /**
     * Paysera category config name
     */
    const CONFIG_PAYSERA_CATEGORY = 'paysera_category';

    /**
     * Paysera gridview config name
     */
    const CONFIG_PAYSERA_GRID = 'paysera_grid_view';

    /**
     * Paysera new order config name
     */
    const CONFIG_NEW_STATUS = 'paysera_new_order_status_id';

    /**
     * Paysera pending order config name
     */
    const CONFIG_PENDING_STATUS = 'paysera_pending_status_id';

    /**
     * Paysera paid order config name
     */
    const CONFIG_PAID_STATUS = 'paysera_paid_status_id';

    /**
     * Paysera quality config name
     */
    const CONFIG_QUALITY = 'paysera_quality';

    /**
     * Paysera owner config name
     */
    const CONFIG_OWNER = 'paysera_owner';

    /**
     * Paysera owner code config name
     */
    const CONFIG_OWNER_CODE = 'paysera_owner_code';

    /**
     * Display errors setter
     */
    const DISPLAY_ERROR = 'display_errors';

    /**
     * Template config name
     */
    const TEMPLATE_NAME = 'config_template';

    /**
     * Store config name
     */
    const STORE_NAME = 'config_store';

    /**
     * Paysera template function
     */
    const PAYSERA_TEMPLATE = '/template/extension/payment/paysera';

    /**
     * Paysera function
     */
    const PAYSERA_EXTENSION = 'extension/payment/paysera';

    /**
     * Paysera owner view
     */
    const PAYSERA_OWNER = 'extension/payment/paysera_owner';

    /**
     * Paysera quality sign view
     */
    const PAYSERA_QUALITY = 'extension/payment/paysera_quality';

    /**
     * accepturl
     */
    const ACCEPT_URL = 'index.php?route=extension/payment/paysera/accept';

    /**
     * cancelurl
     */
    const CANCEL_URL = 'index.php?route=extension/payment/paysera/cancel';

    /**
     * callbackurl
     */
    const CALLBACK_URL = 'index.php?route=extension/payment/paysera/callback';

    /**
     * Paysera confirm order
     */
    const EXTENSION_CONFIRM = 'extension/payment/paysera/confirm';


    /**
     * Guest
     */
    const PAYSERA_GUEST = 'checkout/guest/confirm';

    /**
     * Checkout page
     */
    const CHECKOUT_PAYMENT = 'index.php?route=checkout/payment';

    /**
     * Guest checkout
     */
    const CHECKOUT_GUEST = 'index.php?route=checkout/guest';

    /**
     * @var array
     */
    private $availableLang = array('lt', 'lv', 'ru', 'en', 'pl', 'bg', 'ee');

    /**
     * @var array
     */
    private $payseraTranslations = array(
        'heading_title',
        'text_title',
        'text_chosen',
        'button_confirm',
        'text_loading'
    );

    /**
     * @return mixed
     */
    public function index()
    {
        if (!class_exists('PayseraPaymentMethods')) {
            require_once DIR_SYSTEM . 'library/paysera/PayseraPaymentMethods.php';
        }

        $this->load->language($this::PAYSERA_EXTENSION);

        foreach ($this->getPayseraTranslations() as $translation) {
            $data[$translation] = $this->language->get($translation);
        }

        $data['action'] = $this->url->link($this::EXTENSION_CONFIRM, $this::EMPTY_CODE, $this::SSL);

        if ($this->request->get['route'] != $this::PAYSERA_GUEST) {
            $data['back'] = HTTPS_SERVER . $this::CHECKOUT_PAYMENT;
        } else {
            $data['back'] = HTTPS_SERVER . $this::CHECKOUT_GUEST;
        }

        $this->load->model('checkout/order');
        $order = $this->model_checkout_order->getOrder(
            $this->session->data['order_id']
        );

        $projectID             = $this->config->get($this::CONFIG_PAYSERA_PROJECT);
        $displayPaymentMethods = $this->config->get($this::CONFIG_PAYSERA_LIST);
        $selectedCountries     = $this->config->get($this::CONFIG_PAYSERA_CATEGORY);
        $gridView              = $this->config->get($this::CONFIG_PAYSERA_GRID);
        $description           = $this->config->get($this::CONFIG_PAYSERA_DESCRIPTION);
        $langISO               = $this->language->get($this::CODE);
        $country               = strtolower($order['payment_iso_code_2']);
        $cartTotal             = $this->getAmountInCents($order['total'] , $order['currency_code']);
        $currency              = $order['currency_code'];
        $availableLang         = $this->getAvailableLang();

        $additionalInfo = PayseraPaymentMethods::create()
            ->setProjectID($projectID)
            ->setLang($langISO)
            ->setBillingCountry($country)
            ->setDisplayList($displayPaymentMethods)
            ->setCountriesSelected($selectedCountries)
            ->setGridView($gridView)
            ->setDescription($description)
            ->setCartTotal($cartTotal)
            ->setCartCurrency($currency)
            ->setAvailableLang($availableLang)
        ;

        $data['payment_methods'] = $additionalInfo->build(false);

        if (file_exists(DIR_TEMPLATE . $this->config->get($this::TEMPLATE_NAME) . $this::PAYSERA_TEMPLATE)) {
            return $this->load->view($this->config->get($this::TEMPLATE_NAME) . $this::PAYSERA_TEMPLATE, $data);
        } else {
            return $this->load->view($this::PAYSERA_EXTENSION, $data);
        }
    }

    public function confirm()
    {
        error_reporting(E_ALL);
        ini_set($this::DISPLAY_ERROR, $this::NEW_VALUE);

        $this->load->model('checkout/order');

        $orderID = $this->session->data['order_id'];
        $order = $this->model_checkout_order->getOrder($orderID);
        $this->model_checkout_order->addOrderHistory($orderID, $this->config->get($this::CONFIG_PENDING_STATUS));

        if (!isset($_SERVER['HTTPS'])) {
            $_SERVER['HTTPS'] = false;
        }

        $langISO = $this->language->get($this::CODE);
        $lang    = $this->getPayseraLangCode($langISO);

        if (isset($_REQUEST['paysera_payment_method'])) {
            $payment = $_REQUEST['paysera_payment_method'];
        } else {
            $payment = $this::EMPTY_CODE;
        }

        $paymentData = array(
            'projectid'     => $this->config->get($this::CONFIG_PAYSERA_PROJECT),
            'sign_password' => $this->config->get($this::CONFIG_PAYSERA_PASS),
            'orderid'       => $order['order_id'],
            'amount'        => $this->getAmountInCents($order['total'] , $order['currency_code']),
            'currency'      => $order['currency_code'],
            'accepturl'     => HTTPS_SERVER . $this::ACCEPT_URL,
            'cancelurl'     => HTTPS_SERVER . $this::CANCEL_URL,
            'callbackurl'   => HTTPS_SERVER . $this::CALLBACK_URL,
            'payment'       => $payment,
            'country'       => $order['payment_iso_code_2'],
            'lang'          => $lang,
            'p_firstname'   => $order['payment_firstname'],
            'p_lastname'    => $order['payment_lastname'],
            'p_email'       => $order['email'],
            'p_street'      => $order['payment_address_1'] . ' ' . $order['payment_address_2'],
            'p_city'        => $order['payment_city'],
            'p_zip'         => $order['payment_postcode'],
            'p_countrycode' => $order['payment_iso_code_2'],
            'test'          => (int)$this->config->get($this::CONFIG_PAYSERA_TEST),
        );

        try {
            WebToPay::redirectToPayment($paymentData, true);
        } catch (WebToPayException $e) {
            exit($e->getMessage());
        }
    }

    public function cancel()
    {
        $this->response->redirect($this->url->link('checkout/cart', $this::EMPTY_CODE, true));
    }

    public function accept()
    {
        $projectID = $this->config->get($this::CONFIG_PAYSERA_PROJECT);
        $signPass  = $this->config->get($this::CONFIG_PAYSERA_PASS);
        $response = WebToPay::validateAndParseData($_REQUEST, $projectID, $signPass);

        $this->load->model('checkout/order');
        $order = $this->model_checkout_order->getOrder($response['orderid']);

        $currentStatus = $order['order_status_id'];
        $paidStatus    = $this->config->get($this::CONFIG_PAID_STATUS);
        $newStatus     = $this->config->get($this::CONFIG_NEW_STATUS);
        if ($currentStatus !== $paidStatus) {
            $this->model_checkout_order->addOrderHistory(
                $response['orderid'], $newStatus
            );
        }

        $this->response->redirect($this->url->link('checkout/success', $this::EMPTY_CODE, true));
    }

    public function callback()
    {
        $projectID = $this->config->get($this::CONFIG_PAYSERA_PROJECT);
        $signPass  = $this->config->get($this::CONFIG_PAYSERA_PASS);

        try {
            $response = WebToPay::validateAndParseData($_REQUEST, $projectID, $signPass);

            if ($response['status'] == 1) {
                $orderId = isset($response['orderid']) ? $response['orderid'] : null;

                $this->load->model('checkout/order');
                $order = $this->model_checkout_order->getOrder($orderId);
                if (empty($order)) {
                    throw new Exception('Order with this ID not found');
                }

                $amount = $this->getAmountInCents($order['total'], $order['currency_code']);
                if ($response['amount'] < $amount) {
                    $total = ceil($order['total'] * 100);
                    throw new Exception(
                        'Bad amount: ' . $response['amount']
                        . ', expected: ' . $total
                    );
                }

                if ($response['currency'] != $order['currency_code']) {
                    throw new Exception(
                        'Bad currency: ' . $response['currency']
                        . ', expected: ' . $order['currency_code']
                    );
                }

                $paidOrder = $this->config->get($this::CONFIG_PAID_STATUS);
                $this->model_checkout_order->addOrderHistory($orderId, $paidOrder);

                exit('OK');
            }
        } catch (Exception $e) {
            exit(get_class($e) . ': ' . $e->getMessage());
        }
    }

    public function paysera_header(&$route, &$data, &$output)
    {
        $values['paysera_code'] = $this->config->get($this::CONFIG_OWNER_CODE);

        if ((bool) $this->config->get($this::CONFIG_OWNER)) {
            $data['analytics'][] = $this->load->view($this::PAYSERA_OWNER, $values, true);
        }
    }

    public function paysera_footer(&$route, &$data, &$output)
    {
        $values['paysera_project'] = $this->config->get($this::CONFIG_PAYSERA_PROJECT);
        $values['paysera_lang']    = $this->language->get($this::CODE);

        if ((bool) $this->config->get($this::CONFIG_QUALITY)) {
            $output .= $this->load->view($this::PAYSERA_QUALITY, $values, true) . $output;
        }
    }

    /**
     * @param string $currency
     *
     * @return double
     */
    private function getRate($currency)
    {
        return $this->currency->getvalue($currency);
    }

    /**
     * @param double $total
     * @param string $currency
     *
     * @return int
     */
    private function getAmountInCents($total, $currency)
    {
        return ceil($total * $this->getRate($currency) * 100);
    }

    /**
     * @return array
     */
    private function getAvailableLang()
    {
        return $this->availableLang;
    }

    /**
     * @return array
     */
    private function getPayseraTranslations()
    {
        return $this->payseraTranslations;
    }

    /**
     * @return string
     */
    private function getPayseraLangCode($langISO)
    {
        switch ($langISO) {
            case 'lt':
                return 'LIT';
            case 'lv':
                return 'LAV';
            case 'ee':
                return 'EST';
            case 'ru':
                return 'RUS';
            case 'de':
                return 'GER';
            case 'pl':
                return 'POL';
            case 'bg':
                return 'BGR';
            default:
                return 'ENG';
        }
    }
}
