require './talent.rb'
require './office.rb'
class Tv
  attr_reader :behaviors

  class << self

    # 報道番組
    def news
      new(:mc).onair
    end

    # バラエティ
    def variety
      new(:mc, :sing, :acting).onair
    end

    # AV
    def av
      new(:sex).onair
    end
  end

  def initialize(*behaviors)
    @behaviors = behaviors
  end

  # = オンエアを実行する
  def onair
    @behaviors.each do |behavior|
      talent.public_send behavior
    end

    ensure_onair
  end

  private

  def talent
    @talent ||= Office.build_talent @behaviors
  end

  def ensure_onair
    print "番組オワタ\n"
  end
end

Tv.news
