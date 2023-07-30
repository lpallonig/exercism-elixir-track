defmodule FreelancerRates do
  def daily_rate(hourly_rate), do: hourly_rate * 8.0

  def apply_discount(rate_before_discount, discount_percent) do
    rate_before_discount - (rate_before_discount * (discount_percent/100))
  end

  def monthly_rate(hourly_rate, discount_percent) do
    trunc(Float.ceil(apply_discount(daily_rate(hourly_rate), discount_percent) * 22))
  end

  def days_in_budget(budget, hourly_rate, discount_percent) do
   Float.floor(budget / Float.floor(apply_discount(daily_rate(hourly_rate), discount_percent)), 1)
  end
end
