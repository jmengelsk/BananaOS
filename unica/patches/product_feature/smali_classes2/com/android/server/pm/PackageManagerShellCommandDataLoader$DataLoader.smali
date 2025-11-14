.class public final Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/service/dataloader/DataLoaderService$DataLoader;


# instance fields
.field public mConnector:Landroid/service/dataloader/DataLoaderService$FileSystemConnector;

.field public mParams:Landroid/content/pm/DataLoaderParams;


# virtual methods
.method public final onCreate(Landroid/content/pm/DataLoaderParams;Landroid/service/dataloader/DataLoaderService$FileSystemConnector;)Z
    .registers 3

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mParams:Landroid/content/pm/DataLoaderParams;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mConnector:Landroid/service/dataloader/DataLoaderService$FileSystemConnector;

    const/4 p0, 0x1

    return p0
.end method

.method public final onPrepareImage(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 16

    const-string/jumbo p2, "PackageManagerShellCommandDataLoader"

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v0}, Landroid/content/pm/DataLoaderParams;->getArguments()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->lookupShellCommand(Ljava/lang/String;)Landroid/os/ShellCommand;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_e
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_bc

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/InstallationFile;

    invoke-virtual {v2}, Landroid/content/pm/InstallationFile;->getMetadata()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->fromByteArray([B)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    move-result-object v4

    if-nez v4, :cond_46

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid metadata for file: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_41} :catch_42

    return v1

    :catch_42
    move-exception v0

    move-object p0, v0

    goto/16 :goto_bd

    :cond_46
    iget-byte v5, v4, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mMode:B

    if-eqz v5, :cond_9c

    if-eq v5, v3, :cond_65

    const/4 v2, 0x4

    if-eq v5, v2, :cond_12

    :try_start_4f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "Unsupported metadata mode: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_65
    if-nez v0, :cond_6e

    const-string/jumbo p0, "Missing shell command for Metadata.LOCAL_FILE."

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_6d} :catch_42

    return v1

    :cond_6e
    const/4 v3, 0x0

    :try_start_6f
    new-instance v5, Ljava/lang/String;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mData:[B

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string/jumbo v4, "r"

    invoke-virtual {v0, v5, v4}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v12
    :try_end_7f
    .catchall {:try_start_6f .. :try_end_7f} :catchall_96

    :try_start_7f
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mConnector:Landroid/service/dataloader/DataLoaderService$FileSystemConnector;

    invoke-virtual {v2}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v10

    const-wide/16 v8, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/service/dataloader/DataLoaderService$FileSystemConnector;->writeData(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_8e
    .catchall {:try_start_7f .. :try_end_8e} :catchall_92

    :try_start_8e
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_12

    :catchall_92
    move-exception v0

    move-object p0, v0

    move-object v3, v12

    goto :goto_98

    :catchall_96
    move-exception v0

    move-object p0, v0

    :goto_98
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0

    :cond_9c
    if-nez v0, :cond_a5

    const-string/jumbo p0, "Missing shell command for Metadata.STDIN."

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_a5
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->getStdInPFD(Landroid/os/ShellCommand;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    move-object v3, v2

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$DataLoader;->mConnector:Landroid/service/dataloader/DataLoaderService$FileSystemConnector;

    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/pm/InstallationFile;->getLengthBytes()J

    move-result-wide v6

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/service/dataloader/DataLoaderService$FileSystemConnector;->writeData(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_ba} :catch_42

    goto/16 :goto_12

    :cond_bc
    return v3

    :goto_bd
    const-string p1, "Exception while streaming files"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method
