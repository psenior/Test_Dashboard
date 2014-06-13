current_valuation = 0
current_karma = 0
the_time = Time.now

SCHEDULER.every '2s' do
  last_valuation = current_valuation
  last_karma     = current_karma
  current_valuation = rand(100)
  current_karma     = rand(200000)

  send_event('valuation', { current: current_valuation, last: last_valuation })
  send_event('karma', { current: current_karma, last: last_karma })
  send_event('synergy',   { value: 7 })
  send_event('welcome', { title: "the amazing title", text: "the text that goes with it", moreinfo: "the time is #{the_time}"})
end