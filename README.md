# ADDITIONAL CONTROL FLOW  + ARRAYS

### What the hell is that ?

Control flow in computer science is an order of instructions, functions and statements to be executed when a program is running. 

```ruby 
  puts "Enter your fist name"
  print ">"
  first_name = gets.chomp

  def capitalize_name(param)
      return param.capitalize
  end

  p capitalize_name(first_name)

```

One important thing to know is that *order primes over anything*, for example, if you call a method right before creating it ? You will get this : 

```ruby 
  puts "Enter your fist name"
  print ">"
  first_name = gets.chomp

  p capitalize_name(first_name)

  def capitalize_name(param)
      return param.capitalize
  end

```

```ruby
 Traceback (most recent call last):
 capitalize.rb:5:in `<main>': undefined method `capitalize_name' for main:Object (NoMethodError)
```

The type of control flow below is what we call a sequential control flow, it is based on sequences of instructions executed line by line.

There is typically 3 well-knowned control flows, one based on choices or conditionals called *'Selection control flow'* and other called *'Iteration control flow'* where we will use various iterators and obviously the *'Sequential control flow'* we've been using during our first programming basics challenges. 

![Flows](https://res.cloudinary.com/kzkjr/image/upload/v1636273339/unnamed.png)



## Difference between == and === in Ruby 

Compared to other programming languages, there isn't much of a difference between ``==`` or ``===` in Ruby. 

However, there is a distinction between the two comparison operators in Ruby only in few built-in classes, one of them whom you may now already is the Range class we saw today.

```ruby
(1..10) == 5 #false 
(1...10) === 5 #true
('a'..'z') == 'e' #false
('a'..'z') === 'e' #true 
```

``==`` doesn't give us a precision if the number 5 in a range between 1 to 10 exists but using ```===``` gives us another story.

Other classes can also help us distinguish between both the comparison operators. Such as ```Regex```, ```Proc``` and ```Module```

Module example is to call for example a String class and test the comparison operators 

```ruby 
String === 'Yo people!' #true
String == 'Yo people!' #false
```

Since we haven't spoke much about ```Regex``` yet and ```Proc``` , we will talk about them a little bit more in the coming days. 


# Loop additional examples 

## While 

```ruby
puts "Random positive quotes to boost up your mental health"
puts "How do you feel today ?"
print "> "
user_mood = gets.chomp
random_quotes = ["You can make it !", "Keep up the good work , buddy ! Don't you give up !", "You are capable of anything", 'You will succeed ! Be patient and humble !', 'Keep up the good spirit !']

puts random_quotes.sample

while user_mood != "better" 
    puts "Do you feel better now ?"
    print "> "
    user_mood = gets.chomp
    puts random_quotes.sample
end

```

## Loop 

Example with the scissor game of our livecode 
```ruby 

hands_game = %w(rock scissor paper)

puts "Get ready for the Rock paper scissor game"

loop do 
    puts "Set your game ! [rock paper or scissor?]"
    print "> "
    user_hand = gets.chomp
    computer_hand = hands_game.sample

    case(user_hand)
    when computer_hand 
        puts "DRAW!"
    when "rock"
        player_wins = computer_hand === 'scissor'
    when "paper"
        player_wins = computer_hand === 'rock'
    when "scissor"
        player_wins = computer_hand === 'paper'
    when ''
        puts "Thank you for playing ! Goodbye!"
        #breaking points from the loop
        break
    else    
        puts "Wrong action! Choose again"
    end 

    if player_wins
        puts "Congratulations ! Computer lost on #{computer_hand}"
    elsif (!player_wins && computer_hand != user_hand)
        puts "you loose...Computer choose #{computer_hand}"
    end
  
end

```

## For

```ruby
gdp_array = [["France",'2 Trillion USD'],["Morocco", '112 billion USD'], ["USA", '21 Trillion USD']]

puts "GDP of each country"

for element in gdp_array 
    p "#{element[0]} got a GDP of #{element[1]}"
end

```

```console
GDP of each country
"France got a GDP of 2 Trillion USD"
"Morocco got a GDP of 112 billion USD"
"USA got a GDP of 21 Trillion USD"
```


## Difference between Until and While 

Difference between the two is that While takes a *"truthy"* statement while until takes a *"falsy"* one.

### While 

```ruby 
number = 1

while number <= 20
 puts number.odd? ? "#{number} is odd" : "#{number} is even"
 number += 1
end
```

### Until

```ruby
number = 1

until number > 20
 puts number.odd? ? "#{number} is odd" : "#{number} is even"
 number += 1
end
```


We will talk a little bit more about iterators and blocks in our next session for a complete dive-in ! 


# Arrays 

Arrays are ordered, integer-indexed collections of any object, indexing starts at 0, a negative index ```-1``` starts from the end of an array. 

**Example**
![ExampleArray](https://res.cloudinary.com/kzkjr/image/upload/v1636273329/te%CC%81le%CC%81chargement.png)


## Access one element of an array 

```ruby
students = ['Kawtar','Baptiste', 'Makhtar','Jihane', 'Anouar', 'Taha', 'Nomane']
students[0] 
=> "Kawtar"
students[-1]
=> "Nomane"
```

## Access a range of an array 


```ruby
students = ['Kawtar','Baptiste', 'Makhtar','Jihane', 'Anouar', 'Taha', 'Nomane']
students[0..3]
=> ["Kawtar", "Baptiste", "Makhtar", "Jihane"]
```

The difference between ```..``` and ``...`` when constructing a range is that 3 dots excludes the *end value*

Example 

```ruby
students = ['Kawtar','Baptiste', 'Makhtar','Jihane', 'Anouar', 'Taha', 'Nomane']
students[0..3]
=> ["Kawtar", "Baptiste", "Makhtar", "Jihane"]
students[0...3]
=> ["Kawtar", "Baptiste", "Makhtar"]
```


For more information on Ranges in Ruby, please check out this link :point_right: : https://ruby-doc.org/core-2.5.1/Range.html