-- Table: Crew
CREATE TABLE Crew (
    crew_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    species VARCHAR(50),
    `rank` VARCHAR(50),
    birth_year INT
);

-- Table: Missions
CREATE TABLE Missions (
    mission_id INT AUTO_INCREMENT PRIMARY KEY,
    mission_name VARCHAR(100),
    destination VARCHAR(100),
    start_date DATE,
    end_date DATE
);

-- Table: Crew_Missions (many-to-many relationship)
CREATE TABLE Crew_Missions (
    crew_id INT,
    mission_id INT,
    role VARCHAR(50),
    FOREIGN KEY (crew_id) REFERENCES Crew(crew_id),
    FOREIGN KEY (mission_id) REFERENCES Missions(mission_id)
);

