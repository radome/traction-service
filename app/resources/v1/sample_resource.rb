# frozen_string_literal: true

module V1
  # SampleResource
  class SampleResource < JSONAPI::Resource
    attributes :name, :state, :sequencescape_request_id, :species, :barcode
    has_many :libraries, always_include_linkage_data: true
    has_one :tube

    def barcode
      @model.tube&.barcode
    end
  end
end
