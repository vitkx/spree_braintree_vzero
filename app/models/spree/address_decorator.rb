module Spree
  module AddressDecorator
    def self.prepended(base)
      base.scope :vaulted_duplicates, -> (address) { where.not(id: address.id, braintree_id: nil).where(address.attributes.except('id', 'updated_at', 'created_at', 'braintree_id')) }
    end

    def same_as?(other)
      return false if other.nil?
      attributes.except('id', 'updated_at', 'created_at', 'braintree_id') == other.attributes.except('id', 'updated_at', 'created_at', 'braintree_id')
    end
  end
end

::Spree::Address.prepend(Spree::AddressDecorator)
