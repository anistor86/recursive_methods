def merge_sort(ary)
  return ary if ary.length < 2
    ary_b = merge_sort(ary[0...ary.length/2])
    ary_c = merge_sort(ary[ary.length/2...ary.length])
    ary_a = []
    idx_a = 0
    idx_b = 0
    idx_c = 0
    while ary_a.length < (ary_b.length + ary_c.length)
      if idx_b == ary_b.length
        ary_a[idx_a..(ary_b.length + ary_c.length)] = ary_c[idx_c...ary_c.length]
      elsif idx_c == ary_c.length
        ary_a[idx_a..(ary_b.length + ary_c.length)] = ary_b[idx_b...ary_b.length]
      elsif ary_b[idx_b] <= ary_c[idx_c]
        ary_a[idx_a] = ary_b[idx_b]
        idx_b += 1
        idx_a += 1
      else
        ary_a[idx_a] = ary_c[idx_c]
        idx_c += 1
        idx_a += 1
      end
    end
    return ary_a
end

arr = [3, 1, 5, 7, 2, 8, 6, 4]
puts merge_sort(arr).inspect
