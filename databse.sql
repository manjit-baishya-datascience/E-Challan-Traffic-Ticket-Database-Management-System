-- Drop Table [Vehicles]
DROP TABLE IF EXISTS Vehicles;

-- Table to store information about vehicles involved in traffic incidents
CREATE TABLE IF NOT EXISTS Vehicles (
    VehicleID INT PRIMARY KEY,
    OwnerID INT PRIMARY KEY,
    PlateNumber TEXT NOT NULL,
    Make TEXT NOT NULL,
    Model TEXT NOT NULL,
    Year INT NOT NULL,
    Color TEXT,

    FOREIGN KEY (OwnerID) REFERENCES Owners(OwnerID)
);

-- Drop Table [Owners]
DROP TABLE IF EXISTS Owners;

-- Table to store information about Owners involved in traffic incidents
CREATE TABLE IF NOT EXISTS Owners (
    OwnerID INT PRIMARY KEY,
    FirstName TEXT NOT NULL,
    LastName TEXT NOT NULL,
    LicenseNumber TEXT UNIQUE NOT NULL,
    LicenseType TEXT NOT NULL,
    LicenseExpiryDate DATE NOT NULL,
    Address TEXT,
    City TEXT,
    State TEXT,
    Country TEXT,
    PhoneNumber TEXT
);

-- Drop Table [TrafficIncidents]
DROP TABLE IF EXISTS TrafficIncidents;

-- Table to store information about traffic incidents
CREATE TABLE IF NOT EXISTS TrafficIncidents (
    IncidentID INT PRIMARY KEY,
    IncidentDateTime DATETIME NOT NULL,
    Location TEXT NOT NULL,
    Description TEXT,
    VehicleID INT NOT NULL,
    OwnerID INT NOT NULL,
    
    FOREIGN KEY (VehicleID) REFERENCES Vehicles(VehicleID),
    FOREIGN KEY (OwnerID) REFERENCES Owners(OwnerID)
);

-- Drop Table [TrafficTickets]
DROP TABLE IF EXISTS TrafficTickets;

-- Table to store information about traffic tickets issued
CREATE TABLE IF NOT EXISTS TrafficTickets (
    TicketID INT PRIMARY KEY,
    IncidentID INT NOT NULL,
    ViolationID TEXT NOT NULL,
    Description TEXT,
    Fine DECIMAL(10, 2) NOT NULL,
    IssuingOfficerID INT NOT NULL,
    IssueDateTime DATETIME NOT NULL,
    PaymentStatus TEXT CHECK (PaymentStatus IN ('Paid', 'Unpaid')) DEFAULT 'Unpaid',
    
    FOREIGN KEY (ViolationID) REFERENCES Violations(ViolationID),
    FOREIGN KEY (IncidentID) REFERENCES TrafficIncidents(IncidentID),
    FOREIGN KEY (IssuingOfficerID) REFERENCES TrafficOfficers(OfficerID)
);

-- Drop Table [TrafficOfficers]
DROP TABLE IF EXISTS TrafficOfficers;

-- Table to store information about traffic officers issuing tickets
CREATE TABLE IF NOT EXISTS TrafficOfficers (
    OfficerID INT PRIMARY KEY,
    FirstName TEXT NOT NULL,
    LastName TEXT NOT NULL,
    BadgeNumber TEXT UNIQUE NOT NULL,
    Rank TEXT NOT NULL,
    PhoneNumber TEXT,
    Email TEXT UNIQUE NOT NULL
);

-- Drop Table [Payments]
DROP TABLE IF EXISTS Payments;

-- Table to store information about payments for traffic tickets
CREATE TABLE IF NOT EXISTS Payments (
    PaymentID INT PRIMARY KEY,
    TicketID INT NOT NULL,
    PaymentDateTime DATETIME NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    PaymentMethod TEXT NOT NULL,
    FOREIGN KEY (TicketID) REFERENCES TrafficTickets(TicketID)
);

-- Drop Table [TicketHistories]
DROP TABLE IF EXISTS TicketHistories;

-- Table to store history of changes to traffic tickets
CREATE TABLE IF NOT EXISTS TicketHistories (
    HistoryID INT PRIMARY KEY,
    TicketID INT NOT NULL,
    ModificationDateTime DATETIME NOT NULL,
    ModifiedBy TEXT NOT NULL,
    ModificationType TEXT NOT NULL,
    OldValue TEXT,
    NewValue TEXT,
    FOREIGN KEY (TicketID) REFERENCES TrafficTickets(TicketID)
);

-- Drop Table [Violations]
DROP TABLE IF EXISTS Violations;

-- Table to store information about traffic violations
CREATE TABLE IF NOT EXISTS Violations (
    ViolationID INT PRIMARY KEY,
    Name TEXT NOT NULL,
    Description TEXT
);