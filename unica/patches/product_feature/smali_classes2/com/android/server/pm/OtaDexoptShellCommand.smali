.class public final Lcom/android/server/pm/OtaDexoptShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mInterface:Lcom/android/server/pm/OtaDexoptService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/OtaDexoptService;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Lcom/android/server/pm/OtaDexoptService;

    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "cleanup"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v8

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_2

    :sswitch_1
    const-string/jumbo v3, "step"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v7

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "next"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v6

    goto :goto_1

    :sswitch_3
    const-string/jumbo v3, "done"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_1

    :sswitch_4
    const-string/jumbo v3, "prepare"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v9

    goto :goto_1

    :sswitch_5
    const-string/jumbo v3, "progress"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    if-eqz v3, :cond_8

    if-eq v3, v8, :cond_7

    if-eq v3, v5, :cond_5

    if-eq v3, v7, :cond_4

    if-eq v3, v6, :cond_3

    if-eq v3, v4, :cond_2

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    iget-object p1, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Lcom/android/server/pm/OtaDexoptService;

    invoke-virtual {p1}, Lcom/android/server/pm/OtaDexoptService;->getProgress()F

    move-result p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v3, "%.2f"

    invoke-virtual {p0, v0, v3, p1}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v9

    :cond_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Lcom/android/server/pm/OtaDexoptService;

    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptService;->nextDexoptCommand()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    :cond_4
    iget-object p0, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Lcom/android/server/pm/OtaDexoptService;

    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptService;->dexoptNextPackage()V

    throw v0

    :cond_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Lcom/android/server/pm/OtaDexoptService;

    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptService;->isDone()Z

    move-result p0

    if-eqz p0, :cond_6

    const-string/jumbo p0, "OTA complete."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    :cond_6
    const-string/jumbo p0, "OTA incomplete."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v9

    :cond_7
    iget-object p0, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Lcom/android/server/pm/OtaDexoptService;

    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptService;->cleanup()V

    return v9

    :cond_8
    iget-object p1, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Lcom/android/server/pm/OtaDexoptService;

    invoke-virtual {p1}, Lcom/android/server/pm/OtaDexoptService;->prepare()V

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo p1, "Success"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v9

    :goto_2
    const-string/jumbo p1, "Remote exception: "

    invoke-static {p1, p0, v1}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3bab3dd3 -> :sswitch_5
        -0x12f9f2f9 -> :sswitch_4
        0x2f2382 -> :sswitch_3
        0x338af3 -> :sswitch_2
        0x3606cc -> :sswitch_1
        0x331156a4 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onHelp()V
    .locals 4

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "OTA Dexopt (ota) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  prepare"

    const-string v1, "    Prepare an OTA dexopt pass, collecting all packages."

    const-string v2, "  done"

    const-string v3, "    Replies whether the OTA is complete or not."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  step"

    const-string v1, "    OTA dexopt the next package."

    const-string v2, "  next"

    const-string v3, "    Get parameters for OTA dexopt of the next package."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  cleanup"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Clean up internal states. Ends an OTA session."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
