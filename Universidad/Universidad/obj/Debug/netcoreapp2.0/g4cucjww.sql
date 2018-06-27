ALTER TABLE [Materia] ADD [Precio] float NOT NULL DEFAULT 0E0;

GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20180627021553_precio', N'2.0.3-rtm-10026');

GO

