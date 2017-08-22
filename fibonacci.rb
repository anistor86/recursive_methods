def fibs(n)
  sequence = [0, 1]
  2.upto(n-1) do |num|
      sequence << sequence[-1] + sequence[-2]
  end
  sequence
end

puts fibs(8)

def fibs_rec(n, sequence=[0, 1])
  return sequence if n == 2
  sequence << sequence[-1] + sequence[-2]
  fibs_rec(n-1, sequence)
end

puts fibs_rec(8)
