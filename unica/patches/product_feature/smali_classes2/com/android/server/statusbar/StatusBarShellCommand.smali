.class public final Lcom/android/server/statusbar/StatusBarShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sToken:Lcom/android/server/statusbar/StatusBarShellCommand$StatusBarShellCommandToken;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInterface:Lcom/android/server/statusbar/StatusBarManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/statusbar/StatusBarShellCommand$StatusBarShellCommandToken;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Lcom/android/server/statusbar/StatusBarShellCommand$StatusBarShellCommandToken;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    iput-object p2, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .registers 9

    const/4 v0, 0x1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->onHelp()V

    return v0

    :cond_7
    const/4 v1, -0x1

    :try_start_8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_1f2

    goto/16 :goto_d2

    :sswitch_12
    const-string/jumbo v2, "expand-settings"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    move v2, v0

    goto/16 :goto_d3

    :catch_1e
    move-exception p1

    goto/16 :goto_1e7

    :sswitch_21
    const-string/jumbo v2, "expand-notifications"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    move v2, v3

    goto/16 :goto_d3

    :sswitch_2d
    const-string/jumbo v2, "check-support"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    const/4 v2, 0x7

    goto/16 :goto_d3

    :sswitch_39
    const-string/jumbo v2, "disable-for-setup"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    const/16 v2, 0x9

    goto/16 :goto_d3

    :sswitch_46
    const-string/jumbo v2, "help"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    const/16 v2, 0xe

    goto/16 :goto_d3

    :sswitch_53
    const-string/jumbo v2, "dump"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    const/16 v2, 0xf

    goto/16 :goto_d3

    :sswitch_60
    const-string v2, "-h"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    const/16 v2, 0xd

    goto :goto_d3

    :sswitch_6b
    const-string/jumbo v2, "remove-tile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    const/4 v2, 0x4

    goto :goto_d3

    :sswitch_76
    const-string/jumbo v2, "set-tiles"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    const/4 v2, 0x5

    goto :goto_d3

    :sswitch_81
    const-string/jumbo v2, "collapse"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    const/4 v2, 0x2

    goto :goto_d3

    :sswitch_8c
    const-string/jumbo v2, "click-tile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    const/4 v2, 0x6

    goto :goto_d3

    :sswitch_97
    const-string/jumbo v2, "run-gc"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    const/16 v2, 0xc

    goto :goto_d3

    :sswitch_a3
    const-string/jumbo v2, "send-disable-flag"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    const/16 v2, 0xa

    goto :goto_d3

    :sswitch_af
    const-string/jumbo v2, "tracing"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    const/16 v2, 0xb

    goto :goto_d3

    :sswitch_bb
    const-string/jumbo v2, "get-status-icons"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    const/16 v2, 0x8

    goto :goto_d3

    :sswitch_c7
    const-string/jumbo v2, "add-tile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    const/4 v2, 0x3

    goto :goto_d3

    :cond_d2
    :goto_d2
    move v2, v1

    :goto_d3
    packed-switch v2, :pswitch_data_234

    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getAllArgs()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->passThroughShellCommand([Ljava/lang/String;Ljava/io/FileDescriptor;)V

    return v3

    :pswitch_e4  #0xf
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_e9  #0xd, 0xe
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->onHelp()V

    return v3

    :pswitch_ed  #0xc
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_103

    invoke-static {}, Lcom/android/internal/util/GcUtils;->runGcAndFinalizersSync()V

    iget-object p0, p1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_fb
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_fb} :catch_1e

    if-eqz p0, :cond_1b7

    :try_start_fd
    iget-object p0, p1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->runGcForTest()V
    :try_end_102
    .catch Landroid/os/RemoteException; {:try_start_fd .. :try_end_102} :catch_1b7

    return v3

    :cond_103
    :try_start_103
    new-instance p1, Ljava/lang/SecurityException;

    const-string/jumbo v0, "runGcForTest requires a debuggable build"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_10c  #0xb
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_113
    .catch Landroid/os/RemoteException; {:try_start_103 .. :try_end_113} :catch_1e

    const-string/jumbo v0, "stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12d

    const-string/jumbo v0, "start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_127

    goto/16 :goto_1b7

    :cond_127
    :try_start_127
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p1}, Lcom/android/server/statusbar/StatusBarManagerService;->startTracing()V

    return v3

    :cond_12d
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p1}, Lcom/android/server/statusbar/StatusBarManagerService;->stopTracing()V

    return v3

    :pswitch_133  #0xa
    invoke-virtual {p0}, Lcom/android/server/statusbar/StatusBarShellCommand;->runSendDisableFlag()V

    return v3

    :pswitch_137  #0x9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_156

    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    sget-object v2, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Lcom/android/server/statusbar/StatusBarShellCommand$StatusBarShellCommandToken;

    const/high16 v4, 0x3a50000

    invoke-virtual {p1, v4, v2, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p1, v3, v2, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    return v3

    :cond_156
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    sget-object v2, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Lcom/android/server/statusbar/StatusBarShellCommand$StatusBarShellCommandToken;

    invoke-virtual {p1, v3, v2, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p1, v3, v2, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    return v3

    :pswitch_163  #0x8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v2, v2, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1070171

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_178
    if-ge v5, v4, :cond_1b7

    aget-object v6, v2, v5

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/2addr v5, v0

    goto :goto_178

    :pswitch_181  #0x7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    invoke-static {}, Landroid/service/quicksettings/TileService;->isQuickSettingsSupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :pswitch_191  #0x6
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->clickTile(Landroid/content/ComponentName;)V

    return v3

    :pswitch_19f  #0x5
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    iget-object p0, p1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1aa
    .catch Landroid/os/RemoteException; {:try_start_127 .. :try_end_1aa} :catch_1e

    if-eqz p0, :cond_1b7

    :try_start_1ac
    iget-object p0, p1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setQsTiles([Ljava/lang/String;)V
    :try_end_1b7
    .catch Landroid/os/RemoteException; {:try_start_1ac .. :try_end_1b7} :catch_1b7

    :catch_1b7
    :cond_1b7
    :goto_1b7
    return v3

    :pswitch_1b8  #0x4
    :try_start_1b8
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->remTile(Landroid/content/ComponentName;)V

    return v3

    :pswitch_1c6  #0x3
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcom/android/server/statusbar/StatusBarManagerService;->addQsTileToFrontOrEnd(Landroid/content/ComponentName;Z)V

    return v3

    :pswitch_1d4  #0x2
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p1}, Lcom/android/server/statusbar/StatusBarManagerService;->collapsePanels()V

    return v3

    :pswitch_1da  #0x1
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->expandSettingsPanel(Ljava/lang/String;)V

    return v3

    :pswitch_1e1  #0x0
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p1}, Lcom/android/server/statusbar/StatusBarManagerService;->expandNotificationsPanel()V
    :try_end_1e6
    .catch Landroid/os/RemoteException; {:try_start_1b8 .. :try_end_1e6} :catch_1e

    return v3

    :goto_1e7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "Remote exception: "

    invoke-static {v0, p1, p0}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    return v1

    :sswitch_data_1f2
    .sparse-switch
        -0x4c69c7a6 -> :sswitch_c7
        -0x49dc556a -> :sswitch_bb
        -0x3f9f2f3e -> :sswitch_af
        -0x3ebc9eaa -> :sswitch_a3
        -0x36d414a2 -> :sswitch_97
        -0x310f1c2d -> :sswitch_8c
        -0x25acdc53 -> :sswitch_81
        -0x1dba7da6 -> :sswitch_76
        -0x143fd1a9 -> :sswitch_6b
        0x5db -> :sswitch_60
        0x2f39f4 -> :sswitch_53
        0x30cf41 -> :sswitch_46
        0x35c1e3d4 -> :sswitch_39
        0x6019c00a -> :sswitch_2d
        0x611d4ef5 -> :sswitch_21
        0x63a92df6 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_234
    .packed-switch 0x0
        :pswitch_1e1  #00000000
        :pswitch_1da  #00000001
        :pswitch_1d4  #00000002
        :pswitch_1c6  #00000003
        :pswitch_1b8  #00000004
        :pswitch_19f  #00000005
        :pswitch_191  #00000006
        :pswitch_181  #00000007
        :pswitch_163  #00000008
        :pswitch_137  #00000009
        :pswitch_133  #0000000a
        :pswitch_10c  #0000000b
        :pswitch_ed  #0000000c
        :pswitch_e9  #0000000d
        :pswitch_e9  #0000000e
        :pswitch_e4  #0000000f
    .end packed-switch
.end method

.method public final onHelp()V
    .registers 7

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "Status bar commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  expand-notifications"

    const-string v3, "    Open the notifications panel."

    const-string v4, "  expand-settings"

    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "    Open the notifications panel and expand quick settings if present."

    const-string v3, "  collapse"

    const-string v4, "    Collapse the notifications and settings panel."

    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "  add-tile COMPONENT"

    const-string v3, "    Add a TileService of the specified component"

    invoke-static {v0, v1, v2, v3, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "  remove-tile COMPONENT"

    const-string v3, "    Remove a TileService of the specified component"

    const-string v4, "  set-tiles LIST-OF-TILES"

    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "    Sets the list of tiles as the current Quick Settings tiles"

    const-string v3, "  click-tile COMPONENT"

    const-string v4, "    Click on a TileService of the specified component"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "  check-support"

    const-string v3, "    Check if this device supports QS + APIs"

    invoke-static {v0, v1, v2, v3, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "  get-status-icons"

    const-string v3, "    Print the list of status bar icons and the order they appear in"

    const-string v4, "  disable-for-setup DISABLE"

    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "    If true, disable status bar components unsuitable for device setup"

    const-string v3, "  send-disable-flag FLAG..."

    const-string v4, "    Send zero or more disable flags (parsed individually) to StatusBarManager"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "    Valid options:"

    const-string v3, "        <blank>             - equivalent to \"none\""

    const-string v4, "        none                - re-enables all components"

    const-string v5, "        search              - disable search"

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "        home                - disable naviagation home"

    const-string v3, "        recents             - disable recents/overview"

    const-string v4, "        notification-peek   - disable notification peeking"

    const-string v5, "        statusbar-expansion - disable status bar expansion"

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "        system-icons        - disable system icons appearing in status bar"

    const-string v3, "        clock               - disable clock appearing in status bar"

    const-string v4, "        notification-icons  - disable notification icons from status bar"

    const-string v5, "        quick-settings      - disable Quick Settings"

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "  tracing (start | stop)"

    const-string v3, "    Start or stop SystemUI tracing"

    invoke-static {v0, v1, v2, v3, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "  NOTE: any command not listed here will be passed through to IStatusBar"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  Commands implemented in SystemUI:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/statusbar/StatusBarManagerService;->passThroughShellCommand([Ljava/lang/String;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public final runSendDisableFlag()V
    .registers 7

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/StatusBarManager$DisableInfo;

    invoke-direct {v2}, Landroid/app/StatusBarManager$DisableInfo;-><init>()V

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    :goto_10
    if-eqz v3, :cond_b7

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_d8

    goto/16 :goto_8a

    :sswitch_1c
    const-string/jumbo v5, "notification-icons"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    goto/16 :goto_8a

    :cond_27
    const/16 v4, 0x8

    goto/16 :goto_8a

    :sswitch_2b
    const-string/jumbo v5, "recents"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    goto :goto_8a

    :cond_35
    const/4 v4, 0x7

    goto :goto_8a

    :sswitch_37
    const-string/jumbo v5, "statusbar-expansion"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    goto :goto_8a

    :cond_41
    const/4 v4, 0x6

    goto :goto_8a

    :sswitch_43
    const-string/jumbo v5, "clock"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    goto :goto_8a

    :cond_4d
    const/4 v4, 0x5

    goto :goto_8a

    :sswitch_4f
    const-string/jumbo v5, "home"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_59

    goto :goto_8a

    :cond_59
    const/4 v4, 0x4

    goto :goto_8a

    :sswitch_5b
    const-string/jumbo v5, "quick-settings"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    goto :goto_8a

    :cond_65
    const/4 v4, 0x3

    goto :goto_8a

    :sswitch_67
    const-string/jumbo v5, "notification-alerts"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_71

    goto :goto_8a

    :cond_71
    const/4 v4, 0x2

    goto :goto_8a

    :sswitch_73
    const-string/jumbo v5, "search"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7d

    goto :goto_8a

    :cond_7d
    move v4, v0

    goto :goto_8a

    :sswitch_7f
    const-string/jumbo v5, "system-icons"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_89

    goto :goto_8a

    :cond_89
    const/4 v4, 0x0

    :goto_8a
    packed-switch v4, :pswitch_data_fe

    goto :goto_b1

    :pswitch_8e  #0x8
    invoke-virtual {v2, v0}, Landroid/app/StatusBarManager$DisableInfo;->setNotificationIconsDisabled(Z)V

    goto :goto_b1

    :pswitch_92  #0x7
    invoke-virtual {v2, v0}, Landroid/app/StatusBarManager$DisableInfo;->setRecentsDisabled(Z)V

    goto :goto_b1

    :pswitch_96  #0x6
    invoke-virtual {v2, v0}, Landroid/app/StatusBarManager$DisableInfo;->setStatusBarExpansionDisabled(Z)V

    goto :goto_b1

    :pswitch_9a  #0x5
    invoke-virtual {v2, v0}, Landroid/app/StatusBarManager$DisableInfo;->setClockDisabled(Z)V

    goto :goto_b1

    :pswitch_9e  #0x4
    invoke-virtual {v2, v0}, Landroid/app/StatusBarManager$DisableInfo;->setNagivationHomeDisabled(Z)V

    goto :goto_b1

    :pswitch_a2  #0x3
    invoke-virtual {v2, v0}, Landroid/app/StatusBarManager$DisableInfo;->setQuickSettingsDisabled(Z)V

    goto :goto_b1

    :pswitch_a6  #0x2
    invoke-virtual {v2, v0}, Landroid/app/StatusBarManager$DisableInfo;->setNotificationPeekingDisabled(Z)V

    goto :goto_b1

    :pswitch_aa  #0x1
    invoke-virtual {v2, v0}, Landroid/app/StatusBarManager$DisableInfo;->setSearchDisabled(Z)V

    goto :goto_b1

    :pswitch_ae  #0x0
    invoke-virtual {v2, v0}, Landroid/app/StatusBarManager$DisableInfo;->setSystemIconsDisabled(Z)V

    :goto_b1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_10

    :cond_b7
    invoke-virtual {v2}, Landroid/app/StatusBarManager$DisableInfo;->toFlags()Landroid/util/Pair;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/android/server/statusbar/StatusBarShellCommand;->sToken:Lcom/android/server/statusbar/StatusBarShellCommand$StatusBarShellCommandToken;

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarShellCommand;->mInterface:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, v4, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    return-void

    :sswitch_data_d8
    .sparse-switch
        -0x6a7bc604 -> :sswitch_7f
        -0x36059a58 -> :sswitch_73
        -0x2d0f4a47 -> :sswitch_67
        -0xead8bfd -> :sswitch_5b
        0x30f4df -> :sswitch_4f
        0x5a5dc0e -> :sswitch_43
        0x3c4c98d3 -> :sswitch_37
        0x40828578 -> :sswitch_2b
        0x518d53b8 -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_ae  #00000000
        :pswitch_aa  #00000001
        :pswitch_a6  #00000002
        :pswitch_a2  #00000003
        :pswitch_9e  #00000004
        :pswitch_9a  #00000005
        :pswitch_96  #00000006
        :pswitch_92  #00000007
        :pswitch_8e  #00000008
    .end packed-switch
.end method
