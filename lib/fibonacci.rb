# frozen_string_literal: true

def fibs(number)
  sequence = []
  number.times do
    sequence << 0 and next if sequence.empty?
    sequence << 1 and next if sequence.last.zero?

    sequence << (sequence.last + sequence[-2])
  end
  sequence.join(', ')
end

def fibs_rec(number, sequence = [])
  return sequence.join(', ') if number.zero?

  sequence << (sequence[-2] || 0) + ((1 if sequence.length == 1) || sequence.last || 0)
  fibs_rec(number - 1, sequence)
end
