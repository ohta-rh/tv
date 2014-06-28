class Office

  class << self
    # = Factory Method
    #
    def build_talent(behaviors)
      talent = Object.new

      behaviors.each do |behavior|
        talent.extend Talent::Behavior.get_module(behavior)
      end

      talent
    end
  end
end
