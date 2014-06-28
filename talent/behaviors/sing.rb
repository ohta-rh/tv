module Talent
  module Behaviors
    # = 歌う
    module Sing
      def sing
        print "新曲歌います＾＾"
        ["しょうこうしょうこう", "しょこしょこしょうこう", "あーさーはーらーしょうこう"].each do |lyric|
          wait 1000
          print lyric

        end
      end
    end
  end
end
