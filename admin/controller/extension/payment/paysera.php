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
     * Default currency
     */
    const PAYSERA_CURRENCY = 'EUR';

    /**
     * Default language code
     */
    const PAYSERA_DEFAULT_LANG = 'en';

    /**
     * Empty value
     */
    const PAYSERA_EMPTY_VALUE = '';

    /**
     * Default method
     */
    const REQUEST_METHOD_TYPE = 'POST';

    /**
     * Default project id
     */
    const PAYSERA_DEFAULT_PROJECT_ID = 1;

    /**
     * Paysera payment module name
     */
    const PAYSERA_PAYMENT = 'paysera';

    /**
     * Success text
     */
    const PAYSERA_SUCCESS = 'text_success';

    /**
     * Paysera extension function
     */
    const PAYSERA_EXTENSION_PAYMENT = 'extension/payment/paysera';

    /**
     * Marketplace extension location
     */
    const PAYSERA_MARKETPLACE_EXTENSIONS = 'extension/extension';

    /**
     * Dashboard
     */
    const PAYSERA_COMMON_DASHBOARD = 'common/dashboard';

    /**
     * Prefix used with an error code
     */
    const PAYSERA_ERROR_PREFIX = 'error_';

    /**
     * Callback url
     */
    const PAYSERA_CALLBACK_URL = 'index.php?route=extension/payment/paysera/callback';

    /**
     * Token param
     */
    const PAYSERA_TOKEN_PARAM = 'token=';

    /**
     * Token value
     */
    const PAYSERA_TYPE_PAYMENT = '&type=payment';

    /**
     * Paysera header hook controller
     */
    const PAYSERA_HEADER_CONTROLER = 'extension/payment/paysera/paysera_header';

    /**
     * Paysera footer hook controller
     */
    const PAYSERA_FOOTER_CONTROLER = 'extension/payment/paysera/paysera_footer';

    /**
     * Paysera header hook event
     */
    const PAYSERA_EVENT_HEADER = 'catalog/view/common/header/before';

    /**
     * Paysera footer hook event
     */
    const PAYSERA_EVENT_FOOTER = 'catalog/view/common/footer/before';

    /**
     * Paysera header event name
     */
    const PAYSERA_EVENT_HEADER_NAME = 'paysera_header';

    /**
     * Paysera footer event name
     */
    const PAYSERA_EVENT_FOOTER_NAME = 'paysera_footer';


    /**
     * @var string
     */
    private $projectID;

    /**
     * @var array
     */
    private $error = array();

    /**
     * @var array
     */
    private $errorFieldName = array(
        'warning',
        'project',
        'sign'
    );

    /**
     * @var array
     */
    private $breadcrumbFields = array(
        'text_home'      => 'common/dashboard',
        'text_payment'   => 'extension/payment',
        'heading_title'  => 'extension/payment/paysera'
    );

    /**
     * @var array
     */
    private $payseraFieldsName = array(
        'paysera_status',
        'paysera_project',
        'paysera_sign',
        'paysera_test',
        'paysera_total',
        'paysera_title',
        'paysera_description',
        'paysera_display_payments_list',
        'paysera_category',
        'paysera_selected_countries',
        'paysera_countries',
        'paysera_grid_view',
        'paysera_default_country',
        'paysera_geo_zone_id',
        'paysera_sort_order',
        'paysera_new_order_status_id',
        'paysera_paid_status_id',
        'paysera_pending_status_id',
        'paysera_quality',
        'paysera_owner',
        'paysera_owner_code'
    );

    /**
     * @var array
     */
    private $payseraTranslations = array(
        'heading_title',
        'tab_account',
        'tab_payment',
        'tab_order_status',
        'tab_additions',
        'text_extension',
        'text_payment',
        'text_success',
        'text_select',
        'text_enabled',
        'text_disabled',
        'text_yes',
        'text_no',
        'text_on',
        'text_off',
        'text_edit',
        'text_all_zones',
        'text_paysera',
        'label_status',
        'label_project',
        'label_sign',
        'label_test',
        'label_sort_order',
        'label_total',
        'label_title',
        'label_description',
        'label_paymentlist',
        'label_grid_view',
        'label_geo_zone',
        'label_new_order_status',
        'label_canceled_status',
        'label_order_status',
        'label_quality',
        'label_owner',
        'label_owner_code',
        'entry_project',
        'entry_sign',
        'entry_total',
        'entry_title',
        'entry_description',
        'entry_payment_lang',
        'entry_multi_select',
        'entry_sort_order',
        'entry_quality',
        'entry_owner',
        'entry_owner_code',
        'help_callback',
        'help_total',
        'help_multi_select',
        'error_permission',
        'error_project',
        'error_sign',
        'button_save',
        'button_cancel',
        'error_refresh'
    );

    public function index()
    {
        $this->load->language('extension/payment/paysera');

        $this->document->setTitle($this->language->get('heading_title'));

        $this->load->model('setting/setting');

        if ($this->request->server['REQUEST_METHOD'] == $this::REQUEST_METHOD_TYPE
            && $this->validate()) {
            $this->model_setting_setting->editSetting(
                $this::PAYSERA_PAYMENT,
                $this->request->post
            );

            $this->session->data['success'] = $this->generateData(
                $this::PAYSERA_SUCCESS,
                $this::PAYSERA_EMPTY_VALUE
            );

            $this->response->redirect($this->generateData(
                $this::PAYSERA_EMPTY_VALUE,
                $this::PAYSERA_MARKETPLACE_EXTENSIONS
            ));
        }

        foreach ($this->getPayseraTranslations() as $translation) {
            $data[$translation] = $this->language->get($translation);
        }

        foreach ($this->getErrorFieldName() as $fieldName) {
            $dataName = $this::PAYSERA_ERROR_PREFIX . $fieldName;
            $data[$dataName] = $this->errorValue($fieldName);
        }

        foreach ($this->getBreadcrumbFields() as $key => $value) {
            $data['breadcrumbs'][] = $this->generateData($key, $value);
        }

        $data['action'] = $this->generateData(
            $this::PAYSERA_EMPTY_VALUE,
            $this::PAYSERA_EXTENSION_PAYMENT
        );
        $data['cancel'] = $this->generateData(
            $this::PAYSERA_EMPTY_VALUE,
            $this::PAYSERA_MARKETPLACE_EXTENSIONS
        );
        $data['callback'] = HTTP_CATALOG . $this::PAYSERA_CALLBACK_URL;

        foreach ($this->getPayseraFieldsName() as $fieldName) {
            $data[$fieldName] = $this->generateConfigField($fieldName);
        }

        $this->validateProject($this->config->get('paysera_project'));

        $methods = WebToPay::getPaymentMethodList(
            $this->getProjectID(),
            $this::PAYSERA_CURRENCY
        );

        $data['evp_countries'] = $methods->setDefaultLanguage($this::PAYSERA_DEFAULT_LANG);

        foreach ($data['evp_countries']->getCountries() as $country_id) {
            $countryCode = $country_id->getCode();
            $data['paysera_countries'][$countryCode] = $country_id->getTitle();
        }

        $data['paysera_selected_countries'] = array();
        if (is_array($data['paysera_category'])) {
            foreach ($data['paysera_category'] as $country => $id) {
                $data['paysera_selected_countries'][$id] = $data['paysera_countries'][$id];
            }
        }

        $this->load->model('localisation/order_status');

        $data['order_statuses'] = $this->model_localisation_order_status->getOrderStatuses();

        $this->load->model('localisation/geo_zone');

        $data['geo_zones'] = $this->model_localisation_geo_zone->getGeoZones();

        $this->document->addStyle('view/stylesheet/paysera/backoffice.css');
        $this->document->addScript('view/javascript/paysera/backoffice.js');

        $data['header']      = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer']      = $this->load->controller('common/footer');

        $this->response->setOutput($this->load->view($this::PAYSERA_EXTENSION_PAYMENT, $data));
    }

    /**
     * @return bool
     */
    protected function validate()
    {
        if (!$this->user->hasPermission('modify', $this::PAYSERA_EXTENSION_PAYMENT)) {
            $this->error['warning'] = $this->language->get('error_warning');
        }

        if (!$this->request->post['paysera_project']) {
            $this->error['project'] = $this->language->get('error_project');
        }

        if (!$this->request->post['paysera_sign']) {
            $this->error['sign'] = $this->language->get('error_sign');
        }

        return !$this->error;
    }

    /**
     * @param string $fieldName
     *
     * @return string
     */
    private function errorValue($fieldName)
    {
        if (isset($this->error[$fieldName])) {
            $data = $this->error[$fieldName];
        } else {
            $data = $this::PAYSERA_EMPTY_VALUE;
        }

        return $data;
    }

    /**
     * @param string $text
     * @param string $path
     *
     * @return array
     */
    private function generateData($text, $path)
    {
        if ($path != $this::PAYSERA_MARKETPLACE_EXTENSIONS) {
            $tokenParam = $this::PAYSERA_EMPTY_VALUE;
        } else {
            $tokenParam = $this::PAYSERA_TYPE_PAYMENT;
        }
        $token = $this::PAYSERA_TOKEN_PARAM . $this->session->data['token'] . $tokenParam;

        if (empty($text)) {
            $data = $this->url->link($path, $token, true);
        } elseif (empty($path)) {
            $data = $this->language->get($text);
        } else {
            $data = array(
                'text' => $this->language->get($text),
                'href' => $this->url->link($path, $token, true)
            );
        }

        return $data;
    }

    /**
     * @return array
     */
    private function getPayseraTranslations()
    {
        return $this->payseraTranslations;
    }

    /**
     * @param string $fieldName
     *
     * @return mixed
     */
    private function generateConfigField($fieldName)
    {
        if (isset($this->request->post[$fieldName])) {
            $data = $this->request->post[$fieldName];
        } else {
            $data = $this->config->get($fieldName);
        }

        return $data;
    }

    /**
     * @return array
     */
    private function getErrorFieldName()
    {
        return $this->errorFieldName;
    }

    /**
     * @return array
     */
    private function getPayseraFieldsName()
    {
        return $this->payseraFieldsName;
    }

    /**
     * @param string $projectID
     */
    private function validateProject($projectID)
    {
        if (empty($projectID)) {
            $result = $this::PAYSERA_DEFAULT_PROJECT_ID;
        } else {
            $result = $projectID;
        }

        $this->setProjectID($result);
    }

    /**
     * @return int
     */
    private function getProjectID()
    {
        return $this->projectID;
    }

    /**
     * @param int $projectID
     */
    private function setProjectID($projectID)
    {
        $this->projectID = $projectID;
    }

    /**
     * @return array
     */
    public function getBreadcrumbFields()
    {
        return $this->breadcrumbFields;
    }

    public function install() {
        $this->load->model('extension/event');
        $this->model_extension_event->addEvent(
            $this::PAYSERA_EVENT_HEADER_NAME,
            $this::PAYSERA_EVENT_HEADER,
            $this::PAYSERA_HEADER_CONTROLER)
        ;
        $this->model_extension_event->addEvent(
            $this::PAYSERA_EVENT_FOOTER_NAME,
            $this::PAYSERA_EVENT_FOOTER,
            $this::PAYSERA_FOOTER_CONTROLER)
        ;
    }

    public function uninstall() {
        $this->load->model('extension/event');
        $this->model_extension_event->deleteEvent($this::PAYSERA_EVENT_HEADER_NAME);
        $this->model_extension_event->deleteEvent($this::PAYSERA_EVENT_FOOTER_NAME);
    }
}
