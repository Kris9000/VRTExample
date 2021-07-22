# VRTExample

Welkom! Dit compacte Xcode-project bevat een aantal uitdagingen om je kennis van SwiftUI en Combine te testen, al is het zeker haalbaar om zonder voorkennis de meeste van de taken in dit project tot een goed einde te brengen.

Je wordt **niet** specifiek beoordeeld op of je code al dan niet buildt, runt, of zich zoals verwacht gedraagt. We letten vooral op goed doordachte en veilige code, en we houden natuurlijk ook rekening met de verwachtingen die in ons eerste gesprek gecreëerd werden of de ervaring die uit je CV blijkt.

## De opdrachten:

> *Tip: Je lost deze waarschijnlijk best in volgorde op*

`ProgramsService.swift`

-  Gebruik de TokenAPI om een mock access token te verkrijgen en verbind de call hiervoor aan de call naar de MockAPI
-  Als de MockAPI een error geeft, dan moet er tot maximum drie keer opnieuw geprobeerd worden om de call uit te voeren

`ProgramListViewModel.swift`

-  Gebruik de ProgramsService uit de vorige vraag om een lijst van `ProgramViewModel`s te verkrijgen en wijs deze toe aan de `programs` property

`ListView.swift`

- Vervang lijn 5 (`let list = ProgramListViewModel(service: ProgramsService())`) door iets dat meer "loosely coupled" is. De inhoud van `ExampleApp.swift` zou je voldoende moeten zeggen.
- Als er op een programmatitel getapt wordt moet er een `DetailView` gepusht worden.

Veel succes!
