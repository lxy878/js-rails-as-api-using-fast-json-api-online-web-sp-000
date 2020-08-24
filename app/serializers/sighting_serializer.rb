class SightingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :created_at, :bird, :locations
end
