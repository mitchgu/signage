module BaseHelpers
  def to_id(name)
    # Basic replacement of chars that can't appear in ids
    return name.tr("~!@$%^&*()+=,./';:\"?><[]\{}|`# ", "-")
  end

  def resource_id(resource)
    return "r-" + to_id(resource.name)
  end

  def endpoint_id(resource, endpoint)
    return resource_id(resource) + "-e-" + to_id(endpoint.name)
  end

  def as_md(text)
    return Kramdown::Document.new(text).to_html if text
  end
end
