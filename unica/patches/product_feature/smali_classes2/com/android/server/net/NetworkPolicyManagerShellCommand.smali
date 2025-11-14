.class public final Lcom/android/server/net/NetworkPolicyManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    const-string/jumbo p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public final getUidFromNextArg()I
    .registers 4

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_11

    const-string p0, "Error: didn\'t specify UID"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_11
    :try_start_11
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    :catch_16
    const-string v1, "Error: UID ("

    const-string v2, ") should be a number"

    invoke-static {v0, v1, p0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x2

    return p0
.end method

.method public final listUidList(Ljava/lang/String;[I)V
    .registers 4

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    array-length p1, p2

    if-nez p1, :cond_16

    const-string/jumbo p1, "none"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_27

    :cond_16
    const/4 p1, 0x0

    :goto_17
    array-length v0, p2

    if-ge p1, v0, :cond_27

    aget v0, p2, p1

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_17

    :cond_27
    :goto_27
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final onCommand(Ljava/lang/String;)I
    .registers 6

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

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_b4

    goto :goto_65

    :sswitch_15
    const-string/jumbo v2, "stop-watching"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    const/4 v2, 0x6

    goto :goto_66

    :catch_20
    move-exception p0

    goto/16 :goto_ac

    :sswitch_23
    const-string/jumbo v2, "list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    const/4 v2, 0x2

    goto :goto_66

    :sswitch_2e
    const-string/jumbo v2, "set"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    const/4 v2, 0x1

    goto :goto_66

    :sswitch_39
    const-string/jumbo v2, "get"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    move v2, v3

    goto :goto_66

    :sswitch_44
    const-string/jumbo v2, "add"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    const/4 v2, 0x3

    goto :goto_66

    :sswitch_4f
    const-string/jumbo v2, "remove"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    const/4 v2, 0x4

    goto :goto_66

    :sswitch_5a
    const-string/jumbo v2, "start-watching"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    const/4 v2, 0x5

    goto :goto_66

    :cond_65
    :goto_65
    move v2, v1

    :goto_66
    packed-switch v2, :pswitch_data_d2

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_6e  #0x6
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    iput v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    return v3

    :pswitch_75  #0x5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_8c

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v2, "Invalid UID: "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(I)V

    return v1

    :cond_8c
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mDebugUid:I

    return v3

    :pswitch_93  #0x4
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runRemove()I

    move-result p0

    return p0

    :pswitch_98  #0x3
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runAdd()I

    move-result p0

    return p0

    :pswitch_9d  #0x2
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runList()I

    move-result p0

    return p0

    :pswitch_a2  #0x1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runSet()I

    move-result p0

    return p0

    :pswitch_a7  #0x0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runGet()I

    move-result p0
    :try_end_ab
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_ab} :catch_20

    return p0

    :goto_ac
    const-string/jumbo p1, "Remote exception: "

    invoke-static {p1, p0, v0}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    return v1

    nop

    :sswitch_data_b4
    .sparse-switch
        -0x5c0b0642 -> :sswitch_5a
        -0x37b5077c -> :sswitch_4f
        0x178a1 -> :sswitch_44
        0x18f56 -> :sswitch_39
        0x1bc62 -> :sswitch_2e
        0x32b09e -> :sswitch_23
        0x412bca1e -> :sswitch_15
    .end sparse-switch

    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_a7  #00000000
        :pswitch_a2  #00000001
        :pswitch_9d  #00000002
        :pswitch_98  #00000003
        :pswitch_93  #00000004
        :pswitch_75  #00000005
        :pswitch_6e  #00000006
    .end packed-switch
.end method

.method public final onHelp()V
    .registers 6

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isDataSaverDisabledByCscFeature()Z

    move-result p0

    const-string/jumbo v1, "Network policy manager (netpolicy) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez p0, :cond_2f

    const-string v1, "  add restrict-background-whitelist UID"

    const-string v2, "    Adds a UID to the whitelist for restrict background usage."

    const-string v3, "  add restrict-background-blacklist UID"

    const-string v4, "    Adds a UID to the blacklist for restrict background usage."

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    const-string v1, "  add app-idle-whitelist UID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Adds a UID to the temporary app idle whitelist."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez p0, :cond_45

    const-string v1, "  get restrict-background"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Gets the global restrict background usage status."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_45
    const-string v1, "  list wifi-networks [true|false]"

    const-string v2, "    Lists all saved wifi networks and whether they are metered or not."

    const-string v3, "    If a boolean argument is passed, filters just the metered (or unmetered)"

    const-string v4, "    networks."

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_68

    const-string v1, "  list restrict-background-whitelist"

    const-string v2, "    Lists UIDs that are whitelisted for restrict background usage."

    const-string v3, "  list restrict-background-blacklist"

    const-string v4, "    Lists UIDs that are blacklisted for restrict background usage."

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "  remove restrict-background-whitelist UID"

    const-string v2, "    Removes a UID from the whitelist for restrict background usage."

    const-string v3, "  remove restrict-background-blacklist UID"

    const-string v4, "    Removes a UID from the blacklist for restrict background usage."

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_68
    const-string v1, "  remove app-idle-whitelist UID"

    const-string v2, "    Removes a UID from the temporary app idle whitelist."

    const-string v3, "  set metered-network ID [undefined|true|false]"

    const-string v4, "    Toggles whether the given wi-fi network is metered."

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_7f

    const-string p0, "  set restrict-background BOOLEAN"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Sets the global restrict background usage status."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7f
    const-string p0, "  set sub-plan-owner subId [packageName]"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Sets the data plan owner package for subId."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final resetUidPolicy(ILjava/lang/String;)I
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getUidFromNextArg()I

    move-result v0

    if-gez v0, :cond_7

    return v0

    :cond_7
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I

    move-result v1

    if-eq v1, p1, :cond_25

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: UID "

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_25
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    return p1
.end method

.method public final runAdd()I
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    if-nez v3, :cond_13

    const-string p0, "Error: didn\'t specify type of data to add"

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_13
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_8a

    :goto_1a
    move v5, v4

    goto :goto_3f

    :sswitch_1c
    const-string/jumbo v5, "restrict-background-whitelist"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    goto :goto_1a

    :cond_26
    const/4 v5, 0x2

    goto :goto_3f

    :sswitch_28
    const-string/jumbo v5, "restrict-background-blacklist"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    goto :goto_1a

    :cond_32
    move v5, v0

    goto :goto_3f

    :sswitch_34
    const-string/jumbo v5, "app-idle-whitelist"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3e

    goto :goto_1a

    :cond_3e
    move v5, v1

    :goto_3f
    packed-switch v5, :pswitch_data_98

    const-string p0, "Error: unknown add type \'"

    const-string v0, "\'"

    invoke-static {v2, p0, v3, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :pswitch_4a  #0x2
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isDataSaverDisabledByCscFeature()Z

    move-result v0

    if-eqz v0, :cond_56

    goto :goto_6f

    :cond_56
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getUidFromNextArg()I

    move-result v0

    if-gez v0, :cond_5d

    return v0

    :cond_5d
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    return v1

    :pswitch_64  #0x1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isDataSaverDisabledByCscFeature()Z

    move-result v2

    if-eqz v2, :cond_70

    :goto_6f
    return v1

    :cond_70
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getUidFromNextArg()I

    move-result v2

    if-gez v2, :cond_77

    return v2

    :cond_77
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0, v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    return v1

    :pswitch_7d  #0x0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getUidFromNextArg()I

    move-result v2

    if-gez v2, :cond_84

    return v2

    :cond_84
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0, v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setAppIdleWhitelist(IZ)V

    return v1

    :sswitch_data_8a
    .sparse-switch
        -0x645dc946 -> :sswitch_34
        -0x27d90651 -> :sswitch_28
        0x261f10d9 -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_7d  #00000000
        :pswitch_64  #00000001
        :pswitch_4a  #00000002
    .end packed-switch
.end method

.method public final runGet()I
    .registers 8

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_11

    const-string p0, "Error: didn\'t specify type of data to get"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_11
    const/4 v3, 0x0

    const-string/jumbo v4, "disabled"

    const-string/jumbo v5, "enabled"

    const-string/jumbo v6, "restrict-background"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_49

    const-string/jumbo v6, "restricted-mode"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_32

    const-string p0, "Error: unknown get type \'"

    const-string v3, "\'"

    invoke-static {v0, p0, v1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_32
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "Restricted mode status: "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isRestrictedModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_45

    move-object v4, v5

    :cond_45
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_49
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isDataSaverDisabledByCscFeature()Z

    move-result v0

    if-eqz v0, :cond_55

    return v3

    :cond_55
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "Restrict background status: "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackground()Z

    move-result p0

    if-eqz p0, :cond_68

    move-object v4, v5

    :cond_68
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3
.end method

.method public final runList()I
    .registers 9

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    if-nez v4, :cond_14

    const-string p0, "Error: didn\'t specify type of data to list"

    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_14
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_ec

    :goto_1b
    move v6, v5

    goto :goto_4c

    :sswitch_1d
    const-string/jumbo v6, "restrict-background-whitelist"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    goto :goto_1b

    :cond_27
    const/4 v6, 0x3

    goto :goto_4c

    :sswitch_29
    const-string/jumbo v6, "wifi-networks"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_33

    goto :goto_1b

    :cond_33
    move v6, v0

    goto :goto_4c

    :sswitch_35
    const-string/jumbo v6, "restrict-background-blacklist"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3f

    goto :goto_1b

    :cond_3f
    move v6, v2

    goto :goto_4c

    :sswitch_41
    const-string/jumbo v6, "app-idle-whitelist"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4b

    goto :goto_1b

    :cond_4b
    move v6, v1

    :goto_4c
    packed-switch v6, :pswitch_data_fe

    const-string p0, "Error: unknown list type \'"

    const-string v0, "\'"

    invoke-static {v3, p0, v4, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :pswitch_57  #0x3
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isDataSaverDisabledByCscFeature()Z

    move-result v0

    if-eqz v0, :cond_64

    goto/16 :goto_cf

    :cond_64
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidsWithPolicy(I)[I

    move-result-object v0

    const-string/jumbo v2, "Restrict background whitelisted UIDs"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listUidList(Ljava/lang/String;[I)V

    return v1

    :pswitch_72  #0x2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7e

    move v5, v1

    goto :goto_87

    :cond_7e
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_86

    move v5, v2

    goto :goto_87

    :cond_86
    move v5, v0

    :goto_87
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_91
    :goto_91
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_cf

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_a3

    iget v7, v6, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    if-ne v7, v5, :cond_91

    :cond_a3
    invoke-static {v6}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v7, 0x3b

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(C)V

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    if-eq v6, v2, :cond_bd

    if-eq v6, v0, :cond_b9

    const-string/jumbo v6, "none"

    goto :goto_c0

    :cond_b9
    const-string/jumbo v6, "false"

    goto :goto_c0

    :cond_bd
    const-string/jumbo v6, "true"

    :goto_c0
    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_91

    :pswitch_c4  #0x1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isDataSaverDisabledByCscFeature()Z

    move-result v0

    if-eqz v0, :cond_d0

    :cond_cf
    :goto_cf
    return v1

    :cond_d0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidsWithPolicy(I)[I

    move-result-object v0

    const-string/jumbo v2, "Restrict background blacklisted UIDs"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listUidList(Ljava/lang/String;[I)V

    return v1

    :pswitch_dd  #0x0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getAppIdleWhitelist()[I

    move-result-object v0

    const-string v2, "App Idle whitelisted UIDs"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listUidList(Ljava/lang/String;[I)V

    return v1

    :sswitch_data_ec
    .sparse-switch
        -0x645dc946 -> :sswitch_41
        -0x27d90651 -> :sswitch_35
        -0x15ab1843 -> :sswitch_29
        0x261f10d9 -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_dd  #00000000
        :pswitch_c4  #00000001
        :pswitch_72  #00000002
        :pswitch_57  #00000003
    .end packed-switch
.end method

.method public final runRemove()I
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    if-nez v3, :cond_13

    const-string p0, "Error: didn\'t specify type of data to remove"

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_13
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_80

    :goto_1a
    move v5, v4

    goto :goto_3f

    :sswitch_1c
    const-string/jumbo v5, "restrict-background-whitelist"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    goto :goto_1a

    :cond_26
    const/4 v5, 0x2

    goto :goto_3f

    :sswitch_28
    const-string/jumbo v5, "restrict-background-blacklist"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    goto :goto_1a

    :cond_32
    move v5, v0

    goto :goto_3f

    :sswitch_34
    const-string/jumbo v5, "app-idle-whitelist"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3e

    goto :goto_1a

    :cond_3e
    move v5, v1

    :goto_3f
    packed-switch v5, :pswitch_data_8e

    const-string p0, "Error: unknown remove type \'"

    const-string v0, "\'"

    invoke-static {v2, p0, v3, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :pswitch_4a  #0x2
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isDataSaverDisabledByCscFeature()Z

    move-result v0

    if-eqz v0, :cond_56

    goto :goto_6a

    :cond_56
    const-string/jumbo v0, "not whitelisted"

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->resetUidPolicy(ILjava/lang/String;)I

    move-result p0

    return p0

    :pswitch_5f  #0x1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isDataSaverDisabledByCscFeature()Z

    move-result v2

    if-eqz v2, :cond_6b

    :goto_6a
    return v1

    :cond_6b
    const-string/jumbo v1, "not blacklisted"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->resetUidPolicy(ILjava/lang/String;)I

    move-result p0

    return p0

    :pswitch_73  #0x0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getUidFromNextArg()I

    move-result v0

    if-gez v0, :cond_7a

    return v0

    :cond_7a
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setAppIdleWhitelist(IZ)V

    return v1

    :sswitch_data_80
    .sparse-switch
        -0x645dc946 -> :sswitch_34
        -0x27d90651 -> :sswitch_28
        0x261f10d9 -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_73  #00000000
        :pswitch_5f  #00000001
        :pswitch_4a  #00000002
    .end packed-switch
.end method

.method public final runSet()I
    .registers 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    if-nez v4, :cond_14

    const-string p0, "Error: didn\'t specify type of data to set"

    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_14
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_e4

    :goto_1b
    move v6, v5

    goto :goto_40

    :sswitch_1d
    const-string/jumbo v6, "sub-plan-owner"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    goto :goto_1b

    :cond_27
    move v6, v0

    goto :goto_40

    :sswitch_29
    const-string/jumbo v6, "restrict-background"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_33

    goto :goto_1b

    :cond_33
    move v6, v2

    goto :goto_40

    :sswitch_35
    const-string/jumbo v6, "metered-network"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3f

    goto :goto_1b

    :cond_3f
    move v6, v1

    :goto_40
    packed-switch v6, :pswitch_data_f2

    const-string p0, "Error: unknown set type \'"

    const-string v0, "\'"

    invoke-static {v3, p0, v4, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :pswitch_4b  #0x2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.NETWORK_SETTINGS"

    const-string/jumbo v4, "NetworkPolicy"

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "persist.sys.sub_plan_owner."

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :pswitch_77  #0x1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isDataSaverDisabledByCscFeature()Z

    move-result v0

    if-eqz v0, :cond_83

    return v1

    :cond_83
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_93

    const-string v3, "Error: didn\'t specify BOOLEAN"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9b

    :cond_93
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :goto_9b
    if-gez v5, :cond_9e

    return v5

    :cond_9e
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    if-lez v5, :cond_a3

    goto :goto_a4

    :cond_a3
    move v2, v1

    :goto_a4
    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    return v1

    :pswitch_a8  #0x0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b8

    const-string p0, "Error: didn\'t specify networkId"

    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_b8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_c4

    const-string p0, "Error: didn\'t specify meteredOverride"

    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_c4
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_de

    const-string/jumbo v2, "false"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_df

    move v0, v1

    goto :goto_df

    :cond_de
    move v0, v2

    :cond_df
    :goto_df
    invoke-virtual {p0, v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setWifiMeteredOverride(Ljava/lang/String;I)V

    return v5

    nop

    :sswitch_data_e4
    .sparse-switch
        -0x3a9b30b7 -> :sswitch_35
        -0x2c87c721 -> :sswitch_29
        0x6e1614bc -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_a8  #00000000
        :pswitch_77  #00000001
        :pswitch_4b  #00000002
    .end packed-switch
.end method
