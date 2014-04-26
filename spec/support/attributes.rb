def surrogate_attributes(overrides = {})
  {
    name: 'Dan',
    status: 'applied'
  }.merge(overrides)
end

def task_attributes(overrides = {})
  {
    name: 'Write feature spec',
    description: 'Write another test',
    status: 'open'
  }.merge(overrides)
end

