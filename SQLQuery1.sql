CREATE TABLE [���������]
(
 [ID_���������] Int NOT NULL identity(1,1),
 [���_���������] Varchar(150) NULL
)
go

ALTER TABLE [���������] ADD CONSTRAINT [Key1] PRIMARY KEY ([ID_���������])
go

CREATE TABLE [�������]
(
 [ID_��������] Int NOT NULL identity(1,1),
 [���_��������] Varchar(150) NULL
)
go

ALTER TABLE [�������] ADD CONSTRAINT [Key2] PRIMARY KEY ([ID_��������])
go

CREATE TABLE [���������_��������]
(
 [ID_���������] Int NOT NULL,
 [ID_��������] Int NOT NULL
)
go

ALTER TABLE [���������_��������] ADD CONSTRAINT [Key3] PRIMARY KEY ([ID_���������],[ID_��������])
go

ALTER TABLE [���������_��������] ADD CONSTRAINT [���������/�������] FOREIGN KEY ([ID_���������]) REFERENCES [���������] ([ID_���������]) ON UPDATE NO ACTION ON DELETE NO ACTION
go

ALTER TABLE [���������_��������] ADD CONSTRAINT [�������/���������] FOREIGN KEY ([ID_��������]) REFERENCES [�������] ([ID_��������]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



INSERT INTO [dbo].[�������] ([���_��������])
     VALUES ('������'),('����'),('����'),('Pillow'),('Bed'),('Chair')
GO

INSERT INTO [dbo].[���������] ([���_���������])
     VALUES ('Beddind'),('Furniture')
GO

SELECT e.���_�������� FROM ������� AS e
LEFT JOIN ��������� AS s
ON e.ID_�������� = s.ID_���������