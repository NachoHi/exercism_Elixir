defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    day = hourly_rate * 8.0
    day
  end

  def apply_discount(before_discount, discount) do
    case discount do
      0.0 ->
        before_discount
      _ ->
        after_discoutn = before_discount * (1 - discount / 100)
        after_discoutn
    end
    
  end

  def monthly_rate(hourly_rate, discount) do
    monthly = FreelancerRates.daily_rate(hourly_rate) * 22
    monthly_discount = FreelancerRates.apply_discount(monthly, discount)
    total = ceil(monthly_discount)
    total
  end

  def days_in_budget(budget, hourly_rate, discount) do
    hourly_after_discount = FreelancerRates.apply_discount(hourly_rate, discount)
    horly_work = budget / hourly_after_discount
    days = horly_work/8
    floor(days * 10) /10
  end
end
