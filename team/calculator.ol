include "common.iol"

execution { concurrent }

inputPort HelloInput {
	Location: "socket://localhost:8080/"
	Protocol: sodep
	Interfaces: HelloIface
}

main
{
  request( team )( response ) {
    for( i = 0, i < #team.person, i++ ) {
      sum += team.person[i].age
    };
    response = "The total age of the team is " + sum
  }
}
