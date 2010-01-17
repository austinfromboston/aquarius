module FixtureReplacement
  attributes_for :project do |a|
    a.name = "Jack"
  end

  attributes_for :person do |a|
    a.name = "Jack"
    a.email = "jack@example.com"
  end
end
