Feature: Add Medium
	Description: A medium (a book or CD) is added to the library
	Actors: Administrator

Scenario: Add a book successfully
 	Given that the administrator is logged in
 	And there is a book with title "Extreme Programming", author "Kent Beck", and signature "Beck99"
 	And the book is not in the library
 	When the book is added to the library
 	Then the book with title "Extreme Programming", author "Kent Beck", and signature "Beck99" is contained in the library
 	
Scenario: Add a book when the adminstrator is not logged in
	Given that the administrator is not logged in
 	And there is a book with title "Extreme Programming", author "Kent Beck", and signature "Beck99"
	When the book is added to the library
	Then the error message "Administrator login required" is given
	
Scenario: Add a CD successfully
 	Given that the administrator is logged in
 	And there is a Cd with title "The Life of Brian", author "Monty Python", and signature "Mon79"
 	When the Cd is added to the library
 	Then the Cd with title "The Life of Brian", author "Monty Python", and signature "Mon79" is contained in the library
 	
	