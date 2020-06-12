Kind = "ingress-gateway"
Name = "ingress-gateway"

Listeners = [
{
    Port = 80
    Protocol = "http"
    Services = [
      {
        Name = "frontend"
      }
    ]
  }
]