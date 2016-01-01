class Raindrops
  VERSION = 1

  SOUNDS = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def self.convert(drip)
    rain_bucket = ""
    SOUNDS.each do |factor, sound|
      if drip % factor == 0
        rain_bucket << sound
      end
    end
    if rain_bucket.empty?  
      drip.to_s
    else
      rain_bucket
    end
  end

 end

