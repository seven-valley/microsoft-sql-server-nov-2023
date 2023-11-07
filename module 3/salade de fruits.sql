CREATE TABLE [couleur] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [nom] vachar(255) NOT NULL
)
GO

CREATE TABLE [fruit] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [nom] vachar(255) NOT NULL,
  [couleur_id] int
)
GO

ALTER TABLE [fruit] ADD FOREIGN KEY ([couleur_id]) REFERENCES [couleur] ([id])
GO
