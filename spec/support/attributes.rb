def surrogate_attributes(overrides = {})
  {
    name: 'Dan',
    status: 'applied'
  }.merge(overrides)
end

def task_attributes()
  {
    name: 'Write feature spec',
    description: 'Write another test',
    status: 'open'
  }
end

