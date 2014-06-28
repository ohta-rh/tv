require './talent.rb'
require './office.rb'
class Tv
  attr_reader :behaviors

  class << self

    # 報道番組
    def news
      print "★★★ニュース番組だよ\n"
      new(:mc)
    end

    # バラエティ
    def variety
      print "★★★バラエティだよ！\n"
      new(:mc, :sing, :acting, :conte)
    end

    # AV
    def av
      print "★★★R18\n"
      new(:sex)
    end
  end

  def initialize(*behaviors)
    @behaviors = behaviors
  end

  # = オンエアを実行する
  def onair
    @behaviors.each do |behavior|
      sleep 1
      talent.public_send behavior
    end
  end

  private

  def talent
    @talent ||= Office.build_talent @behaviors
  end
end

Tv.news.onair
Tv.variety.onair
Tv.av.onair
