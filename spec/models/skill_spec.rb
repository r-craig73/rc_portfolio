require 'rails_helper'

describe Skill do
  it { should validate_presence_of :title }
  it { should validate_presence_of :example }

end
