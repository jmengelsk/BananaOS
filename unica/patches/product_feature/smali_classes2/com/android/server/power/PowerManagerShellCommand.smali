.class public final Lcom/android/server/power/PowerManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAlarmListener:Lcom/android/server/power/PowerManagerShellCommand$1;

.field public mAlarmManager:Landroid/app/IAlarmManager;

.field public final mContext:Landroid/content/Context;

.field public final mProxWakelocks:Landroid/util/SparseArray;

.field public final mService:Lcom/android/server/power/PowerManagerService$BinderService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService$BinderService;)V
    .registers 4

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerShellCommand;->mProxWakelocks:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/power/PowerManagerShellCommand;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    const-string/jumbo p1, "alarm"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/PowerManagerShellCommand;->mAlarmManager:Landroid/app/IAlarmManager;

    new-instance p1, Lcom/android/server/power/PowerManagerShellCommand$1;

    invoke-direct {p1, p0}, Lcom/android/server/power/PowerManagerShellCommand$1;-><init>(Lcom/android/server/power/PowerManagerShellCommand;)V

    iput-object p1, p0, Lcom/android/server/power/PowerManagerShellCommand;->mAlarmListener:Lcom/android/server/power/PowerManagerShellCommand$1;

    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .registers 9

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

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v2, :sswitch_data_170

    goto/16 :goto_7f

    :sswitch_18
    const-string/jumbo v2, "set-prox"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    const/4 v2, 0x5

    goto :goto_80

    :catch_23
    move-exception p0

    goto/16 :goto_168

    :sswitch_26
    const-string/jumbo v2, "set-mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    move v2, v4

    goto :goto_80

    :sswitch_31
    const-string/jumbo v2, "set-fixed-performance-mode-enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    const/4 v2, 0x2

    goto :goto_80

    :sswitch_3c
    const-string/jumbo v2, "suppress-ambient-display"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    move v2, v3

    goto :goto_80

    :sswitch_47
    const-string/jumbo v2, "list-ambient-display-suppression-tokens"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    const/4 v2, 0x4

    goto :goto_80

    :sswitch_52
    const-string/jumbo v2, "sleep"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    const/4 v2, 0x7

    goto :goto_80

    :sswitch_5d
    const-string/jumbo v2, "set-adaptive-power-saver-enabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    move v2, v5

    goto :goto_80

    :sswitch_68
    const-string/jumbo v2, "wakeup"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    const/16 v2, 0x8

    goto :goto_80

    :sswitch_74
    const-string/jumbo v2, "set-face-down-detector"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_7b} :catch_23

    if-eqz v2, :cond_7f

    const/4 v2, 0x6

    goto :goto_80

    :cond_7f
    :goto_7f
    move v2, v1

    :goto_80
    const-string v6, "Error: "

    packed-switch v2, :pswitch_data_196

    :try_start_85
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_8a  #0x8
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->runWakeUp()I

    move-result p0
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_8e} :catch_23

    return p0

    :pswitch_8f  #0x7
    :try_start_8f
    iget-object p1, p0, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3, v5, v4}, Lcom/android/server/power/PowerManagerService$BinderService;->goToSleep(JII)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_98} :catch_99

    return v5

    :catch_99
    move-exception p1

    :try_start_9a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_ad} :catch_23

    goto/16 :goto_159

    :pswitch_af  #0x6
    :try_start_af
    iget-object p1, p0, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_c2} :catch_c3

    return v5

    :catch_c3
    move-exception p1

    :try_start_c4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_159

    :pswitch_d9  #0x5
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->runSetProx()I

    move-result p0

    return p0

    :pswitch_de  #0x4
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerShellCommand;->runListAmbientDisplaySuppressionTokens()V

    return v5

    :pswitch_e2  #0x3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1
    :try_end_e6
    .catch Landroid/os/RemoteException; {:try_start_c4 .. :try_end_e6} :catch_23

    :try_start_e6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iget-object p0, p0, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/power/PowerManagerService$BinderService;->suppressAmbientDisplay(Ljava/lang/String;Z)V
    :try_end_f7
    .catch Ljava/lang/RuntimeException; {:try_start_e6 .. :try_end_f7} :catch_f8
    .catch Landroid/os/RemoteException; {:try_start_e6 .. :try_end_f7} :catch_23

    return v5

    :catch_f8
    move-exception p0

    :try_start_f9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_159

    :pswitch_10d  #0x2
    iget-object p1, p0, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p1, v3, v2}, Lcom/android/server/power/PowerManagerService$BinderService;->setPowerModeChecked(IZ)Z

    move-result p1

    if-nez p1, :cond_12c

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v2, "Failed to set FIXED_PERFORMANCE mode"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "This is likely because Power HAL AIDL is not implemented on this device"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_12c
    if-eqz p1, :cond_159

    return v5

    :pswitch_12f  #0x1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1
    :try_end_133
    .catch Landroid/os/RemoteException; {:try_start_f9 .. :try_end_133} :catch_23

    :try_start_133
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_13b
    .catch Ljava/lang/RuntimeException; {:try_start_133 .. :try_end_13b} :catch_145
    .catch Landroid/os/RemoteException; {:try_start_133 .. :try_end_13b} :catch_23

    :try_start_13b
    iget-object p0, p0, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    if-ne p1, v4, :cond_140

    goto :goto_141

    :cond_140
    move v4, v5

    :goto_141
    invoke-virtual {p0, v4}, Lcom/android/server/power/PowerManagerService$BinderService;->setPowerSaveModeEnabled(Z)Z

    return v5

    :catch_145
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_159
    :goto_159
    return v1

    :pswitch_15a  #0x0
    iget-object p1, p0, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/power/PowerManagerService$BinderService;->setAdaptivePowerSaveEnabled(Z)Z
    :try_end_167
    .catch Landroid/os/RemoteException; {:try_start_13b .. :try_end_167} :catch_23

    return v5

    :goto_168
    const-string/jumbo p1, "Remote exception: "

    invoke-static {p1, p0, v0}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    return v1

    nop

    :sswitch_data_170
    .sparse-switch
        -0x3a430f94 -> :sswitch_74
        -0x2f6638c1 -> :sswitch_68
        -0x1fb0eb0b -> :sswitch_5d
        0x6872ed7 -> :sswitch_52
        0x22dac243 -> :sswitch_47
        0x2e2d7375 -> :sswitch_3c
        0x3d8ace98 -> :sswitch_31
        0x519c0c2e -> :sswitch_26
        0x519d75f6 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_196
    .packed-switch 0x0
        :pswitch_15a  #00000000
        :pswitch_12f  #00000001
        :pswitch_10d  #00000002
        :pswitch_e2  #00000003
        :pswitch_de  #00000004
        :pswitch_d9  #00000005
        :pswitch_af  #00000006
        :pswitch_8f  #00000007
        :pswitch_8a  #00000008
    .end packed-switch
.end method

.method public final onHelp()V
    .registers 6

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "Power manager (power) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  set-adaptive-power-saver-enabled [true|false]"

    const-string v2, "    enables or disables adaptive power saver."

    const-string v3, "  set-mode MODE"

    const-string v4, "    sets the power mode of the device to MODE."

    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "    1 turns low power mode on and 0 turns low power mode off."

    const-string v2, "  set-fixed-performance-mode-enabled [true|false]"

    const-string v3, "    enables or disables fixed performance mode"

    const-string v4, "    note: this will affect system performance and should only be used"

    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "          during development"

    const-string v2, "  suppress-ambient-display <token> [true|false]"

    const-string v3, "    suppresses the current ambient display configuration and disables"

    const-string v4, "    ambient display"

    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "  list-ambient-display-suppression-tokens"

    const-string v2, "    prints the tokens used to suppress ambient display"

    const-string v3, "  set-prox [list|acquire|release] (-d <display_id>)"

    const-string v4, "    Acquires the proximity sensor wakelock. Wakelock is associated with"

    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "    a specific display if specified. \'list\' lists wakelocks previously"

    const-string v2, "    created by set-prox including their held status."

    const-string v3, "  set-face-down-detector [true|false]"

    const-string v4, "    sets whether we use face down detector timeouts or not"

    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "  sleep"

    const-string v2, "    requests to sleep the device"

    const-string v3, "  wakeup <delay>"

    const-string v4, "    requests to wake up the device. If a delay of milliseconds is specified,"

    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "    alarm manager will schedule a wake up after the delay."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    invoke-static {p0, v0}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public final runListAmbientDisplaySuppressionTokens()V
    .registers 5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_11
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplaySuppressionController:Lcom/android/server/power/AmbientDisplaySuppressionController;

    invoke-virtual {p0, v1}, Lcom/android/server/power/AmbientDisplaySuppressionController;->getSuppressionTokens(I)Ljava/util/List;

    move-result-object p0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_3c

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v1, p0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string/jumbo p0, "none"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3b

    :cond_2c
    const-string v1, ", "

    invoke-static {v1, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "["

    const-string/jumbo v2, "]"

    invoke-static {v0, v1, p0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3b
    return-void

    :catchall_3c
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final runSetProx()I
    .registers 9

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_ac

    :goto_19
    move v2, v4

    goto :goto_3e

    :sswitch_1b
    const-string/jumbo v5, "release"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    goto :goto_19

    :cond_25
    const/4 v2, 0x2

    goto :goto_3e

    :sswitch_27
    const-string/jumbo v5, "list"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_19

    :cond_31
    move v2, v0

    goto :goto_3e

    :sswitch_33
    const-string/jumbo v5, "acquire"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    goto :goto_19

    :cond_3d
    move v2, v3

    :goto_3e
    packed-switch v2, :pswitch_data_ba

    const-string p0, "Error: Allowed options are \'list\' \'enable\' and \'disable\'."

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :pswitch_47  #0x2
    move v2, v3

    goto :goto_56

    :pswitch_49  #0x1
    const-string/jumbo v0, "Wakelocks:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/PowerManagerShellCommand;->mProxWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return v3

    :pswitch_55  #0x0
    move v2, v0

    :goto_56
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-d"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_74

    const-string p0, "Error: Specified displayId ("

    const-string v0, ") must a non-negative int."

    invoke-static {v1, p0, v5, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_74
    move v4, v6

    :cond_75
    add-int/2addr v0, v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerShellCommand;->mProxWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager$WakeLock;

    if-nez v5, :cond_9f

    iget-object v5, p0, Lcom/android/server/power/PowerManagerShellCommand;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/PowerManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    const-string/jumbo v6, "PowerManagerShellCommand["

    const-string/jumbo v7, "]"

    invoke-static {v4, v6, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v5, v7, v6, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;I)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iget-object p0, p0, Lcom/android/server/power/PowerManagerShellCommand;->mProxWakelocks:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_9f
    if-eqz v2, :cond_a5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_a8

    :cond_a5
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_a8
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return v3

    :sswitch_data_ac
    .sparse-switch
        -0x45649f2a -> :sswitch_33
        0x32b09e -> :sswitch_27
        0x41012807 -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_55  #00000000
        :pswitch_49  #00000001
        :pswitch_47  #00000002
    .end packed-switch
.end method

.method public final runWakeUp()I
    .registers 27

    move-object/from16 v0, p0

    const-string/jumbo v1, "Schedule an alarm to wakeup in "

    const-string v2, "Calling uid "

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Error: "

    const/4 v6, -0x1

    if-nez v4, :cond_3b

    :try_start_14
    iget-object v7, v0, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-string/jumbo v11, "PowerManagerShellCommand"

    iget-object v0, v0, Lcom/android/server/power/PowerManagerShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v10, 0x2

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/power/PowerManagerService$BinderService;->wakeUpWithDisplayId(JILjava/lang/String;Ljava/lang/String;I)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_28} :catch_2a

    goto/16 :goto_d3

    :catch_2a
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    :cond_3b
    :try_start_3b
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_3f} :catch_e5

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-gez v4, :cond_57

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: Can\'t set a negative delay: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    :cond_57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    add-long v14, v9, v7

    iget-object v4, v0, Lcom/android/server/power/PowerManagerShellCommand;->mAlarmManager:Landroid/app/IAlarmManager;

    if-nez v4, :cond_6e

    const-string/jumbo v4, "alarm"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/power/PowerManagerShellCommand;->mAlarmManager:Landroid/app/IAlarmManager;

    :cond_6e
    :try_start_6e
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v4

    if-nez v4, :cond_9b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not an android package. Cannot schedule a delayed wakeup on behalf of it."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    :catch_99
    move-exception v0

    goto :goto_d5

    :cond_9b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms, on behalf of "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/power/PowerManagerShellCommand;->mAlarmManager:Landroid/app/IAlarmManager;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iget-object v0, v0, Lcom/android/server/power/PowerManagerShellCommand;->mAlarmListener:Lcom/android/server/power/PowerManagerShellCommand$1;

    const-string/jumbo v23, "PowerManagerShellCommand"

    const/16 v20, 0x40

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v22, v0

    invoke-interface/range {v11 .. v25}, Landroid/app/IAlarmManager;->set(Ljava/lang/String;IJJJILandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_d3} :catch_99

    :goto_d3
    const/4 v0, 0x0

    return v0

    :goto_d5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    :catch_e5
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: Can\'t parse arg "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as a long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6
.end method
