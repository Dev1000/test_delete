module A
  def a1
    names = Array.new(20) { |e| e * 2 }
    p names.at(1)
  end

  def a2
    months = Hash['a': 100, 'b' => 200]
    p months
  end
end

module B
  def b1
    p Time.now.zone
  end

  def b2
    attempts = 3
    retry_count = 0

    p 5 / 1
    raise 'Error RAISE'
  rescue ZeroDivisionError => e
    if retry_count < attempts
      retry_count += 1
      p "#{e.message}, retry_count: #{retry_count}"
      retry
    else
      p 'Error, maximum retry attempts reached.'
    end

  rescue StandardError => e
    p e.message
  else
    p 'No errors occurred'
  ensure
    p 'Ensuring cleanup tasks'
  end
end

class Sample
  include A
  include B

  def s1

  end
end

s = Sample.new
s.b2
