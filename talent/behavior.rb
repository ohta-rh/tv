module Talent
  module Behavior
    BEHAVIORS =
    {
      sing:   "Sing",
      acting: "Acting",
      mc:     "Mc",
      conte:  "Conte",
      sex:    "Sex"


    }
    def self.get_module(behavior)
      mod = Object.const_get "Talent::Behaviors::#{BEHAVIORS[behavior]}"

    end
  end
end
