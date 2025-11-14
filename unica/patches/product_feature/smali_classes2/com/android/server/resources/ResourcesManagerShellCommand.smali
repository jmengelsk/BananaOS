.class public final Lcom/android/server/resources/ResourcesManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mInterface:Lcom/android/server/resources/ResourcesManagerService$1;


# direct methods
.method public constructor <init>(Lcom/android/server/resources/ResourcesManagerService$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/resources/ResourcesManagerShellCommand;->mInterface:Lcom/android/server/resources/ResourcesManagerService$1;

    return-void
.end method


# virtual methods
.method public final dumpResources()I
    .registers 7

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    :try_start_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_2d

    :try_start_c
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    new-instance v3, Landroid/os/RemoteCallback;

    new-instance v4, Lcom/android/server/resources/ResourcesManagerShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/android/server/resources/ResourcesManagerShellCommand$$ExternalSyntheticLambda0;-><init>(Landroid/os/ConditionVariable;)V

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/server/resources/ResourcesManagerShellCommand;->mInterface:Lcom/android/server/resources/ResourcesManagerService$1;

    invoke-virtual {v4, v0, v1, v3}, Lcom/android/server/resources/ResourcesManagerService$1;->dumpResources(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)Z

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Landroid/os/ConditionVariable;->block(J)Z
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_30

    const/4 v0, 0x0

    if-eqz v1, :cond_2f

    :try_start_29
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    return v0

    :catch_2d
    move-exception v0

    goto :goto_3c

    :cond_2f
    return v0

    :catchall_30
    move-exception v0

    if-eqz v1, :cond_3b

    :try_start_33
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception v1

    :try_start_38
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3b
    :goto_3b
    throw v0
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3c} :catch_2d

    :goto_3c
    const-string/jumbo v1, "ResourcesManagerShellCommand"

    const-string v2, "Exception while dumping resources"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception while dumping resources: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final onCommand(Ljava/lang/String;)I
    .registers 5

    if-nez p1, :cond_7

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    :try_start_b
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x2f39f4

    if-eq v1, v2, :cond_15

    goto :goto_27

    :cond_15
    const-string/jumbo v1, "dump"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Lcom/android/server/resources/ResourcesManagerShellCommand;->dumpResources()I

    move-result p0

    return p0

    :catch_23
    move-exception p0

    goto :goto_2c

    :catch_25
    move-exception p0

    goto :goto_33

    :cond_27
    :goto_27
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_2b} :catch_25
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_2b} :catch_23

    return p0

    :goto_2c
    const-string/jumbo p1, "Remote exception: "

    invoke-static {p1, p0, v0}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    goto :goto_48

    :goto_33
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Error: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_48
    const/4 p0, -0x1

    return p0
.end method

.method public final onHelp()V
    .registers 2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "Resources manager commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  dump <PROCESS>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Dump the Resources objects in use as well as the history of Resources"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
