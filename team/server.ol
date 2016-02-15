include "common.iol"

execution { concurrent }

inputPort HelloInput {
Location: "socket://localhost:8000/"
Protocol: sodep
Interfaces: HelloIface
}

outputPort CalcSrv {
Location: "socket://localhost:8080/"
Protocol: sodep
Interfaces: HelloIface
}

main
{
	request(team)(reqRes) {
  	request@CalcSrv(team)(sumRes);
  	reqRes = sumRes
  }
}
