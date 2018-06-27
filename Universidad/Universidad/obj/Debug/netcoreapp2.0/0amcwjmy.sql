IF OBJECT_ID(N'__EFMigrationsHistory') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20180626023504_Primera')
BEGIN
    CREATE TABLE [Alumno] (
        [IDAlumno] int NOT NULL IDENTITY,
        [Apellido1] varchar(50) NULL,
        [Apellido2] varchar(50) NULL,
        [FechaNacimiento] date NULL,
        [Nombre] varchar(50) NOT NULL,
        CONSTRAINT [PK_Alumno] PRIMARY KEY ([IDAlumno])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20180626023504_Primera')
BEGIN
    CREATE TABLE [Materia] (
        [IDMateria] int NOT NULL IDENTITY,
        [Estado] int NULL,
        [Nombre] varchar(50) NOT NULL,
        CONSTRAINT [PK_Materia] PRIMARY KEY ([IDMateria])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20180626023504_Primera')
BEGIN
    CREATE TABLE [Profesor] (
        [IDProfesor] int NOT NULL IDENTITY,
        [Apellido1] varchar(50) NULL,
        [Apellido2] varchar(50) NULL,
        [Estado] int NULL,
        [Nombre] varchar(50) NOT NULL,
        CONSTRAINT [PK_Profesor] PRIMARY KEY ([IDProfesor])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20180626023504_Primera')
BEGIN
    CREATE TABLE [Matricula] (
        [IDMatricula] int NOT NULL IDENTITY,
        [IDAlumno] int NULL,
        [IDMateria] int NULL,
        [IDProfesor] int NULL,
        [Nota] float NOT NULL,
        CONSTRAINT [PK_Matricula] PRIMARY KEY ([IDMatricula]),
        CONSTRAINT [fk_matricula_alumno] FOREIGN KEY ([IDAlumno]) REFERENCES [Alumno] ([IDAlumno]) ON DELETE NO ACTION,
        CONSTRAINT [fk_matricula_materia] FOREIGN KEY ([IDMateria]) REFERENCES [Materia] ([IDMateria]) ON DELETE NO ACTION,
        CONSTRAINT [fk_matricula_profesor] FOREIGN KEY ([IDProfesor]) REFERENCES [Profesor] ([IDProfesor]) ON DELETE NO ACTION
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20180626023504_Primera')
BEGIN
    CREATE INDEX [IX_Matricula_IDAlumno] ON [Matricula] ([IDAlumno]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20180626023504_Primera')
BEGIN
    CREATE INDEX [IX_Matricula_IDMateria] ON [Matricula] ([IDMateria]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20180626023504_Primera')
BEGIN
    CREATE INDEX [IX_Matricula_IDProfesor] ON [Matricula] ([IDProfesor]);
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20180626023504_Primera')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20180626023504_Primera', N'2.0.3-rtm-10026');
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20180627021553_precio')
BEGIN
    ALTER TABLE [Materia] ADD [Precio] float NOT NULL DEFAULT 0E0;
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20180627021553_precio')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20180627021553_precio', N'2.0.3-rtm-10026');
END;

GO

