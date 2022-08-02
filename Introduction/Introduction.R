#Comment

a=5
b=4
c=a+b
print(paste0(c))

#In this subject single # means a comment, double ## means a result

#Exercise
D = 1000
k = 5
h = 0.25

Q = sqrt((2 * D * k)/(h))
print(paste0(Q))

#Creating objects, same as declaring with =
R <- 50
print(paste0(R))

countto <- 1:14
print(paste0(countto))

#R is case sensitive
A <- 35

#Arrays with different lengths
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)

result <- array(c(vector1,vector2),dim = c(3,3,2))
print(result)

#Typing "mtcars" into the console will create a list of cars with their specs

#Typing "history()" into console will open up the history tab on the top right

#Rounding up numbers 
rounded_number <- round(5.643543)
print(rounded_number)

#Square root
square_rooted_number <- sqrt(16)
print(square_rooted_number)

#Mean value and rounding up or down to closest whole number
num_range <- 1:10
mean_num_range <- mean(num_range)
print(mean_num_range)
print(round(mean_num_range))

#Rounding up numbers, but with decimal place control
rounded_number_2 <- round(7.6947596, digit = 2)
print(rounded_number_2)

#Generate random numbers, with certain sizes (number of rolls), also printing the sum of the numbers
  #"replace = TRUE" is a must in this function
dice = sample(1:6, size = 3, replace = TRUE)
print(dice)
print(sum(dice))

#Functions in R. It contains a name, body of code, and set of arguments
  #Dice with function example
roll <- function() {
  faces <- 1:6
  dice <- sample(faces, size = 3, replace = TRUE)
  #print("role", sum(dice)) #Commented out because I needed a comment on the printed line
  print(paste0("role: ", sum(dice)))
}

#Calling the function roll
roll()

#Functions with an input global value
roll2 <- function(faces) {
  dice <- sample(faces, size = 3, replace = TRUE)
  #print(sum(dice))
  print(paste0("role2 (custom global input): ", sum(dice)))
}
#Calling function roll2, with global input
roll2(faces = 1:6)

#Functions with already inputed global value
roll3 <- function(faces = 1:6) {
  dice <- sample(faces, size = 4, replace = TRUE)
  print(paste0("role3: ", sum(dice)))
}
roll3()

#Functions with multiple global input value
roll4 <- function(faces, size){
  dice <- sample(faces, size, replace = TRUE)
  print(paste0("role4 (multiple input): ", sum(dice)))
}
roll4(faces = 1:6, size = 3)

#Alternative
roll5 <- function(faces, number_of_dice){
  dice <- sample(faces, size = number_of_dice, replace = TRUE)
  print(paste0("role5 (multiple input): ", sum(dice)))
}
roll5(faces = 1:6, number_of_dice = 3)

#Typing "?..." into the console to any function will give the documentation of the function
  #example "?sample", will give documentation of "sample"
#Or type "??log" to display all functions

#or typing "example(function_name)" will give an example in the console


#JUST FOR SPACING IN THE CONSOLE PRINT
cat("\n\nSpacing-------------------------------------------------\n\n\n")

#Vectors in R
vector1 <- c(1/6, 1/6, 1/6, 1/6, 1/6, 1/6)
print(paste0("vector1: ", vector1))

cat("\n\nSpacing-------------------------------------------------\n\n\n")


#Rolling 100 times, with a bigger (50%) bias weight to the 6th value of the dice
  #in "sample" function, there is a probability bias weight
roll6 <- function(faces, number_of_dice){
  dice <- sample(faces, size = number_of_dice, replace = TRUE, prob = c(0.1, 0.1, 0.1, 0.1, 0.1, 0.5))
  sum(dice)
}
#Replicating the results of the roll6 function 100 times, and then plotting the result
results <- replicate(n = 100, expr = roll6(faces = 1:6, number_of_dice = 1), simplify=TRUE)
hist(results) #Plot into a graph




