select Person.firstName, Person.lastName, Address.city, Address.state
from Person left join Address using(personId);
