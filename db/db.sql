CREATE TABLE messages (
    id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    message VARCHAR(3000) NOT NULL
);

CREATE TABLE tags (
    id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE message_tags (
    messageId INT,
    tagId INT,
    PRIMARY KEY (messageId, tagId),
    FOREIGN KEY (messageId) REFERENCES messages(id) ON DELETE CASCADE,
    FOREIGN KEY (tagId) REFERENCES tags(id) ON DELETE CASCADE
);