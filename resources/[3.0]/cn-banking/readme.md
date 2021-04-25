## Dependencies
cn-taskbar
cn-ui
PolyZone

### How to use
For add infos in your sql

``
    TriggerServerEvent("banking:updaterecent", ply, amount, comment, date, type, sender, target, iden)

    or

    TriggerEvent("banking:updaterecent", ply, amount, comment, date, type, sender, target, iden)

``

ply = your identifier
amount = money amount
comment = comment
date = current date (avalible in client)
type = value "pos" or "neg"
sender = sender
target = target
iden = ex: "WITHDRAW"

####

1. Run the SQL