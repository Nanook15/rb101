require 'yaml'
MESSAGES = YAML.load_file('loan_calc_messages.yml')

require 'date'

def prompt(message)
  puts "=> #{message}"
end

def date_valid?(date, date_format)
  Date.parse(date).strftime(date_format) == date
end

def valid_num?(num)
  /\d/.match(num) && /^-?\d*\.?\d*$/.match(num)
end

def end_date(start_date, term_in_years)
  start_date + (term_in_years.to_i * 365)
end

def monthly_payment(principal, apr, term_in_years)
  loan = principal.to_i
  interest = apr.to_f / 1000
  term_in_months = term_in_years.to_i * 12
  payment = loan * (interest / (1 - (1 + interest)**(-term_in_months)))
  payment.ceil(2)
end

principal = ''
term_in_years = ''
name = ''
start = ''
apr = ''

prompt(MESSAGES['welcome'])
prompt(MESSAGES['name'])

loop do
  name = gets.chomp
  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

loop do # main loop
  loop do
    prompt("Hello #{name}. How much would you borrow? (USD)")
    principal = gets.chomp

    if valid_num?(principal)
      break
    else prompt(MESSAGES['invalid_number'])
    end
  end

  loop do
    prompt(MESSAGES['start_date'])
    start = gets.chomp

    if date_valid?(start, '%d/%m/%Y')
      break
    else prompt(MESSAGES['invalid_date'])
    end
  end

  loop do
    prompt(MESSAGES['term'])
    term_in_years = gets.chomp

    if valid_num?(term_in_years)
      break
    else prompt(MESSAGES['invalid_number'])
    end
  end

  loop do
    prompt(MESSAGES['apr_query'])
    apr = gets.chomp

    if valid_num?(apr)
      break
    else prompt(MESSAGES['invalid_number'])
    end
  end

  loan_terms = <<-MSG
  The terms of the proposed loan are as follows:
     Amount of Loan   :    $#{principal}    
     Monthly Payment  :    $#{monthly_payment(principal, apr, term_in_years)}
     Term             :    #{term_in_years.to_i * 12} months
     APR              :    #{apr}%
     Final Payment    :    #{end_date(Date.parse(start), term_in_years)}
  MSG

  prompt(loan_terms)
  prompt(MESSAGES['repeat'])
  break if gets.chomp.downcase != 'y'
end
