module Talent
  module Behaviors
    # = 歌う
    module Sing
      def sing
        print "新曲歌います＾＾\n" and sleep 1

        %w(しょうこうしょうこう しょこしょこしょうこう あーさーはーらーしょうこう).each do |lyric|
          print "♩♩♩"
          print lyric
          sleep 2

        end

        print "\nありがとーーーー＾＾\n"
      end
    end
  end
end
