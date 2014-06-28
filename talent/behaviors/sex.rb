module Talent
  module Behaviors
    module Sex
      def sex
        ["あーん", "いい", "そこー"].each do |aegi|
          print "♡"
          sleep 2
          print aegi
        end
      end
    end
  end
end
