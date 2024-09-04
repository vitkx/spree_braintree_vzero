class Spree::Admin::Orders::CustomerDetails::Form
  Deface::Override.new(
    virtual_path: 'spree/admin/orders/customer_details/_form',
    name: 'Add warning for braintree admins',
    insert_after: '[data-hook="customer_fields"]',
    text: '<div class="alert alert-warning">
            <%= I18n.t("braintree.admin.guest_checkout_warning") %>
          </div>'
  )
end