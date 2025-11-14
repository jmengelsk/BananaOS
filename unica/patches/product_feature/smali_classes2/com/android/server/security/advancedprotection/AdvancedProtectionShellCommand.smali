.class public final Lcom/android/server/security/advancedprotection/AdvancedProtectionShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mService:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .registers 10

    if-nez p1, :cond_7

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v2, :sswitch_data_82

    goto :goto_52

    :sswitch_19
    const-string/jumbo v2, "set-protection-enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_52

    move p1, v6

    goto :goto_53

    :catch_24
    move-exception p0

    goto :goto_7b

    :sswitch_26
    const-string/jumbo v2, "is-protection-enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_52

    move p1, v5

    goto :goto_53

    :sswitch_31
    const-string/jumbo v2, "set-usb-data-protection-enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_52

    move p1, v4

    goto :goto_53

    :sswitch_3c
    const-string/jumbo v2, "help"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_52

    move p1, v7

    goto :goto_53

    :sswitch_47
    const-string/jumbo v2, "is-usb-data-protection-enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_52

    move p1, v3

    goto :goto_53

    :cond_52
    :goto_52
    move p1, v1

    :goto_53
    if-eqz p1, :cond_77

    if-eq p1, v6, :cond_69

    if-eq p1, v5, :cond_5f

    if-eq p1, v4, :cond_5e

    if-eq p1, v3, :cond_5e

    goto :goto_81

    :cond_5e
    return v7

    :cond_5f
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionShellCommand;->mService:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->isAdvancedProtectionEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    return v7

    :cond_69
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionShellCommand;->mService:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->setAdvancedProtectionEnabled(Z)V

    return v7

    :cond_77
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/AdvancedProtectionShellCommand;->onHelp()V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_7a} :catch_24

    return v7

    :goto_7b
    const-string/jumbo p1, "Remote exception: "

    invoke-static {p1, p0, v0}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    :goto_81
    return v1

    :sswitch_data_82
    .sparse-switch
        -0x76fb381c -> :sswitch_47
        0x30cf41 -> :sswitch_3c
        0x1433f31c -> :sswitch_31
        0x3be2cdd0 -> :sswitch_26
        0x5f33a398 -> :sswitch_19
    .end sparse-switch
.end method

.method public final onHelp()V
    .registers 2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Advanced Protection Mode commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  set-protection-enabled [true|false]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  is-protection-enabled"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
