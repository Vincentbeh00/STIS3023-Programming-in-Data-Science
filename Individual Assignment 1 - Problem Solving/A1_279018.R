#Q1: Storing a vector and identifying elements meeting specific criteria
vec1 = c(6,9,7,3,6,7,9,6,3,6,6,7,1,9,1)
vec1
which(vec1 == 7)      #Q1(a)
which(vec1 >= 6)      #Q1(b)
which(vec1 < 5+2)     #Q1(c)
which(vec1 != 6)      #Q1(d)



#Q2: Creating a new vector and examining specific entries in an array
vec2 = vec1[-1:-3]
vec2

arr1 = array(vec2, dim = c(2,2,3))
arr1

which(arr1 <= (6/2+4))      #Q2(a)

arr1 = arr1 + 2             #Q2(b)
arr1
which (arr1 <= (6/2+4))


#Q3: Identifying specific locations in the 10x10 identity matrix
diag(10)
which (diag(10) ==  0)


#Q4: Identifying elements in a vector based on conditions
vec4 = c(7,1,7,10,5,9,10,3,10,8)
vec4
which(vec4 >5 | vec4 == 2)

#Q5: Identifying elements in another vector based on conditions
vec5 = c(8,8,4,4,5,1,5,6,6,8)
vec5
which(vec5 <=6 & vec5 !=4)      

#Q6: Finding elements satisfying conditions in both vectors
which ((vec4 >5 | vec4 == 2) & (vec5 <=6 & vec5 !=4))


#Q7: Performing operations on vectors and identifying elements based on conditions
vec7 = vec4 + vec5
vec7

which(vec7 >= 14& vec7 != 15)                #Q7(a)

which((vec7/vec4) > 4 | (vec7/vec4) <= 2)    #Q7(b)

#Q8: Manipulating a vector and extracting elements based on conditions
vec8 = c(7,5,6,1,2,10,8,3,8,2)
vec8

vec8a = vec8[which(vec8 >= 5)]               #Q8(a)
vec8a

vec8[which(vec8 < 5)]                        #Q8(b)


#Q9: Creating a matrix from a vector and modifying specific elements
matrix9 = matrix(vec8a, nrow =2, ncol =3, byrow = TRUE)
matrix9

matrix9 [which(matrix9 == 8)] = matrix9[1,2]^2
matrix9


#Q10: Manipulating values in an array based on conditions
array10 = array(data = c(10,5,1,4,7,4,3,3,1,3,4,3,1,7,8,3,7,3), dim=c(3,2,3))
array10

array10[which(array10 < 3 | array10 >= 7)] =100
array10

#Q11: Identifying specific elements in a vector
vec11 = c(13563, -14156, -14319, 16981, 12921, 11979, 9568, 8833, -12968, 8133)
vec11

which(vec11^75 != -Inf)


#Q12: Performing operations on a matrix and identifying elements based on conditions
matrix12 = matrix(data = c(77875.40, 27551.45, 23764.30, -36478.88,
                           -35466.25, -73333.85, 36599.69, -70585.69,
                           -39803.81, 55976.34, 76694.82, 47032.00) , nrow = 3, ncol = 4, byrow =TRUE)
#Q12(a)
matrix12
matrix12^67 + Inf
matrix12[!is.nan(matrix12^67 + Inf)]

#Q12(b)
matrix12
matrix12^67
matrix12[which(matrix12^67 ==-Inf | is.finite(matrix12^67) )]


#Q13: Function to convert Celsius to Fahrenheit
CelciusToFahrenheitConverter = function(TemperatureInCelcius){
  TemperatureInFahrenheit = (TemperatureInCelcius*9/5) +32
  
  print(TemperatureInCelcius)
  
  print(TemperatureInFahrenheit)
}

CelciusToFahrenheitConverter(1)



#Q14: Function to create a list from different types of vectors
ListCreator = function(char, log, num){
  listOutput = list()
    
    listOutput[[1]] = char
    listOutput[[2]] = log
    listOutput[[3]] = num
    
    return(listOutput)
  
}
vec_char = c("A", "B", "C")
vec_log = c(TRUE, FALSE, T)
vec_num = c(1, 3.5, 8)

ListCreator(vec_char, vec_log, vec_num)


#Q15: Function to convert numeric vector to logical vector
CoerceToLogic = function(NumericVector){
  as.logical(NumericVector)

}
CoerceToLogic(c(1,2,3,4,5))


#Q16: Function to perform arithmetic operations on two numbers
Result4Operations = function(num1, num2){
  Addition = num1+num2
  Subtraction = num1-num2
  Multiplication = num1*num2
  Division = num1/num2
  
  vec4Operations = c(Addition, Subtraction, Multiplication, Division)
  names(vec4Operations) = c("Addition", "Subtraction", "Multiplication", "Division")
  vec4Operations
}

Result4Operations(2,2)


#Q17: Function to generate a vector of multiplications in descending order
ResultMultiplications = function(num){
  
  vec = c(9:1)
  output_vec = vec * num
  output_vec = sort(output_vec, decreasing = TRUE)
  
  return(output_vec)
}

ResultMultiplications(5)



#Q18: Creating a matrix and forming a list with components from the matrix
matrix18 = matrix(c(34, 23, 33, 42, 41, 0, 1, 1, 0, 0, 1, 2, 1, 1, 2), nrow=5)
matrix18

#Q18(a)
list18 = list()

matrix18a = matrix18[,1]
matrix18a
list18[[1]] = matrix18a
list18

#Q18(b)
logical18 = as.logical(matrix18[,2])
logical18
list18[[2]] = logical18
list18

#Q18(c)
character18 = ifelse(mat[,3] == 1, "YES", "NO")
character18
list18[[3]] = character18
list18

#Q19: Creating a list with specified components
list19 = list(vec8 = vec8, matrix9 = matrix9, array10 = array10)
list19


#Q20: Manipulating elements in lists and matrices
list18[[4]] = list19
list18

#Q20(a)
matrix20a = rbind(list18[[1]][3:5], list18[[4]][[2]][1,])
matrix20a

#Q20(b)
list18[[4]][[3]][which(list18[[4]][[3]]==100)] = 10
list18
