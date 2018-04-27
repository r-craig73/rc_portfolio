require 'rails_helper'

describe Interest do
  it { should validate_presence_of :heading }
  it { should validate_presence_of :body }

end
