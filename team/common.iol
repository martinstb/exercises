type HelloRequest:void {
  .person[1,5]:void {
    .name:string
    .age:int
  }
  .sponsor:string
}

interface HelloIface {
RequestResponse:
  request(HelloRequest)(string)
}
