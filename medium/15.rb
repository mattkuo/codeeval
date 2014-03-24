#!/usr/bin/env ruby

puts [1].pack('n') == [1].pack('S') ? 'BigEndian' : 'LittleEndian'
