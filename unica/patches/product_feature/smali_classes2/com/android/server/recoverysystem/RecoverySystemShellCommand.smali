.class public final Lcom/android/server/recoverysystem/RecoverySystemShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mService:Lcom/android/server/recoverysystem/RecoverySystemService;


# direct methods
.method public constructor <init>(Lcom/android/server/recoverysystem/RecoverySystemService;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->mService:Lcom/android/server/recoverysystem/RecoverySystemService;

    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .registers 11

    if-nez p1, :cond_7

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_7
    const/4 v0, -0x1

    :try_start_8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v1, :sswitch_data_fa

    goto :goto_4f

    :sswitch_15
    const-string/jumbo v1, "reboot-and-apply"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    move v1, v4

    goto :goto_50

    :catch_20
    move-exception v1

    goto/16 :goto_e5

    :sswitch_23
    const-string/jumbo v1, "request-lskf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    move v1, v6

    goto :goto_50

    :sswitch_2e
    const-string/jumbo v1, "is-lskf-captured"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    move v1, v3

    goto :goto_50

    :sswitch_39
    const-string/jumbo v1, "wipe"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    move v1, v2

    goto :goto_50

    :sswitch_44
    const-string/jumbo v1, "clear-lskf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4b} :catch_20

    if-eqz v1, :cond_4f

    move v1, v5

    goto :goto_50

    :cond_4f
    :goto_4f
    move v1, v0

    :goto_50
    const-string/jumbo v7, "failure"

    const-string/jumbo v8, "success"

    if-eqz v1, :cond_c8

    if-eq v1, v5, :cond_ad

    if-eq v1, v3, :cond_8c

    if-eq v1, v4, :cond_69

    if-eq v1, v2, :cond_65

    :try_start_60
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_65
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->wipe()V

    return v6

    :cond_69
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->mService:Lcom/android/server/recoverysystem/RecoverySystemService;

    invoke-interface {v3, v1, v2, v6}, Landroid/os/IRecoverySystem;->rebootWithLskf(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v2

    if-nez v2, :cond_7a

    goto :goto_7b

    :cond_7a
    move v5, v6

    :goto_7b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    if-eqz v5, :cond_82

    move-object v7, v8

    :cond_82
    filled-new-array {v1, v7}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%s Reboot and apply status: %s\n"

    invoke-virtual {v2, v3, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v6

    :cond_8c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->mService:Lcom/android/server/recoverysystem/RecoverySystemService;

    invoke-interface {v2, v1}, Landroid/os/IRecoverySystem;->isLskfCaptured(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    if-eqz v2, :cond_a0

    const-string/jumbo v2, "true"

    goto :goto_a3

    :cond_a0
    const-string/jumbo v2, "false"

    :goto_a3
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s LSKF capture status: %s\n"

    invoke-virtual {v3, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v6

    :cond_ad
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->mService:Lcom/android/server/recoverysystem/RecoverySystemService;

    invoke-interface {v2, v1}, Landroid/os/IRecoverySystem;->clearLskf(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    if-eqz v2, :cond_be

    move-object v7, v8

    :cond_be
    filled-new-array {v1, v7}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Clear LSKF for packageName: %s, status: %s\n"

    invoke-virtual {v3, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v6

    :cond_c8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->mService:Lcom/android/server/recoverysystem/RecoverySystemService;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IRecoverySystem;->requestLskf(Ljava/lang/String;Landroid/content/IntentSender;)Z

    move-result v2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    if-eqz v2, :cond_da

    move-object v7, v8

    :cond_da
    filled-new-array {v1, v7}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "Request LSKF for packageName: %s, status: %s\n"

    invoke-virtual {v3, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_e4} :catch_20

    return v6

    :goto_e5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error while executing command: "

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    return v0

    :sswitch_data_fa
    .sparse-switch
        -0x2e71d75e -> :sswitch_44
        0x37b047 -> :sswitch_39
        0x485fa2c6 -> :sswitch_2e
        0x4aea45a0 -> :sswitch_23
        0x53c163d0 -> :sswitch_15
    .end sparse-switch
.end method

.method public final onHelp()V
    .registers 2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "Recovery system commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  request-lskf <package_name>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  clear-lskf"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  is-lskf-captured <package_name>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  reboot-and-apply <package_name> <reason>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  wipe <new filesystem type ext4/f2fs>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final wipe()V
    .registers 6

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "--wipe_data\n--reformat_data="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_17
    const-string v1, "--wipe_data"

    :goto_19
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Rebooting into recovery with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    const-string v4, " "

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemShellCommand;->mService:Lcom/android/server/recoverysystem/RecoverySystemService;

    invoke-interface {p0, v1}, Landroid/os/IRecoverySystem;->rebootRecoveryWithCommand(Ljava/lang/String;)V

    return-void
.end method
