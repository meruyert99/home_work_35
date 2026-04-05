Architecture Layers:

[ View ]
   ↓
[ Controller / Presenter ]
   ↓
[ Service (Business Logic) ]
   ↓
[ Repository ]
   ↓
[ Data Source (in-memory) ]

---

Responsibilities:

View:
- UI rendering
- user input handling

Controller / Presenter:
- handle user actions
- coordinate between View and Model
- call services

Service:
- business logic
- validation rules

Repository:
- data storage
- data retrieval

ErrorHandler:
- centralized error processing
