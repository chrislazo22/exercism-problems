require 'pry'

class Change
  def self.generate(coins, amount, coin_hash={}, set=0)
    original_amount = amount
    coins = coins.sort.reverse!

    while amount > 0
      coins.each do |coin|
        if coin > amount
          next
        else
          coin_hash[set] = coin_hash[set].nil? ? [coin] : coin_hash[set] << coin
          amount = amount - coin

          redo
        end
      end
    end

    coins.shift
    if coins.length > 0
      Change.generate(coins, original_amount, coin_hash, (set + 1) )
    end

    optimal_coins(coin_hash)
  end

  def self.optimal_coins(hash)
    hash.values.group_by { |a| a.length }.min[1].first.sort
  end
end
