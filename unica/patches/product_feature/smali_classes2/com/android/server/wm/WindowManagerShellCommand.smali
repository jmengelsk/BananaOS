.class public final Lcom/android/server/wm/WindowManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

.field public final mInterface:Lcom/android/server/wm/WindowManagerService;

.field public final mInternal:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    return-void
.end method


# virtual methods
.method public final getDisplayId(Ljava/lang/String;)I
    .registers 4

    const-string v0, "-d"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object p1

    :goto_d
    if-eqz p1, :cond_4d

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    :try_start_15
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1d} :catch_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_1d} :catch_1e

    return p0

    :catch_1e
    move-exception p1

    goto :goto_22

    :catch_20
    move-exception p1

    goto :goto_38

    :goto_22
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4d

    :goto_38
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: bad number "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4d
    :goto_4d
    const/4 p0, 0x0

    return p0
.end method

.method public final onCommand(Ljava/lang/String;)I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-nez p1, :cond_c

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    :try_start_10
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x4

    sparse-switch v6, :sswitch_data_466

    goto/16 :goto_1b9

    :sswitch_1a
    const-string/jumbo v6, "scaling"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    move v6, v1

    goto/16 :goto_1ba

    :catch_26
    move-exception p0

    goto/16 :goto_45e

    :sswitch_29
    const-string/jumbo v6, "force-opt-out-e2e-remove"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    const/16 v6, 0x1f

    goto/16 :goto_1ba

    :sswitch_36
    const-string/jumbo v6, "fixed-to-user-rotation"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    const/16 v6, 0x8

    goto/16 :goto_1ba

    :sswitch_43
    const-string/jumbo v6, "density"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    move v6, v4

    goto/16 :goto_1ba

    :sswitch_4f
    const-string/jumbo v6, "reset-freeze-recent-tasks"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    const/16 v6, 0x15

    goto/16 :goto_1ba

    :sswitch_5c
    const-string/jumbo v6, "reset-multi-window-config"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    const/16 v6, 0x12

    goto/16 :goto_1ba

    :sswitch_69
    const-string/jumbo v6, "last-grip-cmd"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    const/16 v6, 0x19

    goto/16 :goto_1ba

    :sswitch_76
    const-string/jumbo v6, "set-letterbox-style"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    const/16 v6, 0xc

    goto/16 :goto_1ba

    :sswitch_83
    const-string/jumbo v6, "reset-letterbox-style"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    const/16 v6, 0xe

    goto/16 :goto_1ba

    :sswitch_90
    const-string/jumbo v6, "set-sandbox-display-apis"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    const/16 v6, 0xf

    goto/16 :goto_1ba

    :sswitch_9d
    const-string/jumbo v6, "logging"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    const/4 v6, 0x6

    goto/16 :goto_1ba

    :sswitch_a9
    const-string/jumbo v6, "size-density"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    const/16 v6, 0x1a

    goto/16 :goto_1ba

    :sswitch_b6
    const-string/jumbo v6, "user-rotation"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    const/4 v6, 0x7

    goto/16 :goto_1ba

    :sswitch_c2
    const-string/jumbo v6, "set-display-windowing-mode"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    const/16 v6, 0x16

    goto/16 :goto_1ba

    :sswitch_cf
    const-string/jumbo v6, "shell"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    const/16 v6, 0x18

    goto/16 :goto_1ba

    :sswitch_dc
    const-string/jumbo v6, "reset"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    const/16 v6, 0x13

    goto/16 :goto_1ba

    :sswitch_e9
    const-string/jumbo v6, "set-multi-window-config"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    const/16 v6, 0x10

    goto/16 :goto_1ba

    :sswitch_f6
    const-string/jumbo v6, "remote-wallpaper"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    const/16 v6, 0x1b

    goto/16 :goto_1ba

    :sswitch_103
    const-string/jumbo v6, "size"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    move v6, v0

    goto/16 :goto_1ba

    :sswitch_10f
    const-string/jumbo v6, "dismiss-keyguard"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    move v6, v7

    goto/16 :goto_1ba

    :sswitch_11b
    const-string/jumbo v6, "get-display-windowing-mode"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    const/16 v6, 0x17

    goto/16 :goto_1ba

    :sswitch_128
    const-string/jumbo v6, "folded-area"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    move v6, v2

    goto/16 :goto_1ba

    :sswitch_134
    const-string/jumbo v6, "screenshot"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    const/16 v6, 0x1c

    goto/16 :goto_1ba

    :sswitch_141
    const-string/jumbo v6, "dump-visible-window-views"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    const/16 v6, 0xb

    goto/16 :goto_1ba

    :sswitch_14e
    const-string/jumbo v6, "disable-blur"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    const/16 v6, 0x14

    goto :goto_1ba

    :sswitch_15a
    const-string/jumbo v6, "tracing"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    const/4 v6, 0x5

    goto :goto_1ba

    :sswitch_165
    const-string/jumbo v6, "force-opt-out-e2e-add"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    const/16 v6, 0x1e

    goto :goto_1ba

    :sswitch_171
    const-string/jumbo v6, "background-display"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    const/16 v6, 0x1d

    goto :goto_1ba

    :sswitch_17d
    const-string/jumbo v6, "set-ignore-orientation-request"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    const/16 v6, 0x9

    goto :goto_1ba

    :sswitch_189
    const-string/jumbo v6, "get-ignore-orientation-request"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    const/16 v6, 0xa

    goto :goto_1ba

    :sswitch_195
    const-string/jumbo v6, "get-multi-window-config"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    const/16 v6, 0x11

    goto :goto_1ba

    :sswitch_1a1
    const-string/jumbo v6, "get-letterbox-style"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b9

    const/16 v6, 0xd

    goto :goto_1ba

    :sswitch_1ad
    const-string/jumbo v6, "clear-cutout-policy"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1b4
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1b4} :catch_26

    if-eqz v6, :cond_1b9

    const/16 v6, 0x20

    goto :goto_1ba

    :cond_1b9
    :goto_1b9
    move v6, v3

    :goto_1ba
    const-string v8, "-d"

    packed-switch v6, :pswitch_data_4ec

    :try_start_1bf
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_1c4  #0x20
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mDisplayCutoutController:Lcom/android/server/wm/DisplayCutoutController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayCutoutController;->clearCutoutPolicy(Ljava/lang/String;)V

    return v0

    :pswitch_1d4  #0x1f
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_FORCE_OPT_OUT_EDGE_TO_EDGE:Z

    if-eqz p1, :cond_464

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->updateForceOptOutEdgeToEdgePackage(Ljava/lang/String;Z)V

    return v0

    :pswitch_1e6  #0x1e
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_FORCE_OPT_OUT_EDGE_TO_EDGE:Z

    if-eqz p1, :cond_464

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->updateForceOptOutEdgeToEdgePackage(Ljava/lang/String;Z)V

    return v0

    :pswitch_1f8  #0x1c
    new-array p1, v7, [Ljava/lang/String;

    move v1, v0

    :goto_1fb
    if-ge v1, v7, :cond_205

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/2addr v1, v4

    goto :goto_1fb

    :cond_205
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mScreenshotController:Lcom/android/server/wm/WmScreenshotController;

    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController;->mShellCommand:Lcom/android/server/wm/WmScreenshotShellCommand;

    invoke-virtual {p0, v5, p1}, Lcom/android/server/wm/WmScreenshotShellCommand;->exec(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return v0

    :pswitch_211  #0x1b
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_REMOTE_WALLPAPER_ANIM:Z

    if-eqz p1, :cond_464

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_21c
    .catch Landroid/os/RemoteException; {:try_start_1bf .. :try_end_21c} :catch_26

    const-string/jumbo v1, "finish"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23b

    const-string/jumbo v1, "start"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_230

    goto/16 :goto_464

    :cond_230
    :try_start_230
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mShellRemoteAnimRunner:Landroid/view/IRemoteAnimationRunner;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->startRemoteWallpaperAnimation(Landroid/view/IRemoteAnimationRunner;I)Z

    move-result p0

    if-eqz p0, :cond_464

    goto :goto_245

    :cond_23b
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mShellRemoteAnimRunner:Landroid/view/IRemoteAnimationRunner;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->finishRemoteWallpaperAnimation(Landroid/view/IRemoteAnimationRunner;)Z

    move-result p0

    if-eqz p0, :cond_464

    :goto_245
    return v0

    :pswitch_246  #0x1a
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplaySizeDensity(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_24b  #0x19
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    if-eqz p1, :cond_464

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "lastGripCmd="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/TspStateController;->mTspDebug:Lcom/android/server/wm/TspStateController$TspDebug;

    invoke-virtual {p0}, Lcom/android/server/wm/TspStateController$TspDebug;->updateDebugString()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "TspStateManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_275  #0x18
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runWmShellCommand()V

    return v0

    :pswitch_279  #0x17
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerShellCommand;->runGetDisplayWindowingMode(Ljava/io/PrintWriter;)V

    return v0

    :pswitch_27d  #0x16
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_297

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    move v1, p1

    move-object p1, v9

    goto :goto_298

    :cond_297
    move v1, v0

    :goto_298
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/WindowManagerService;->setWindowingMode(II)V

    return v0

    :pswitch_2a2  #0x15
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo p1, "android.permission.MANAGE_ACTIVITY_TASKS"

    const-string/jumbo v1, "resetFreezeRecentTaskListReordering()"

    invoke-virtual {p0, p1, v1, v4}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission$1(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2b8

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p0}, Lcom/android/server/wm/RecentTasks;->resetFreezeTaskListReorderingOnTimeout()V

    return v0

    :cond_2b8
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Requires MANAGE_ACTIVITY_TASKS permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2c1  #0x14
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBlurDisabled(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_2c6  #0x13
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerShellCommand;->runReset(Ljava/io/PrintWriter;)V

    return v0

    :pswitch_2ca  #0x12
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runResetMultiWindowConfig()V

    return v0

    :pswitch_2ce  #0x11
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerShellCommand;->runGetMultiWindowConfig(Ljava/io/PrintWriter;)V

    return v0

    :pswitch_2d2  #0x10
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetMultiWindowConfig()I

    move-result p0

    return p0

    :pswitch_2d7  #0xf
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    move-object v9, v6

    move v6, p1

    move-object p1, v9

    goto :goto_2f2

    :cond_2f1
    move v6, v0

    :goto_2f2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2f5
    .catch Landroid/os/RemoteException; {:try_start_230 .. :try_end_2f5} :catch_26

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_532

    :goto_2fc
    move v1, v3

    goto :goto_329

    :sswitch_2fe
    const-string/jumbo v2, "false"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_329

    goto :goto_2fc

    :sswitch_308
    const-string/jumbo v1, "true"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_312

    goto :goto_2fc

    :cond_312
    move v1, v2

    goto :goto_329

    :sswitch_314
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31d

    goto :goto_2fc

    :cond_31d
    move v1, v4

    goto :goto_329

    :sswitch_31f
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_328

    goto :goto_2fc

    :cond_328
    move v1, v0

    :cond_329
    :goto_329
    packed-switch v1, :pswitch_data_544

    :try_start_32c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: expecting true, 1, false, 0, but we get "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :pswitch_33a  #0x0, 0x3
    move v4, v0

    :pswitch_33b  #0x1, 0x2
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v6, v4}, Lcom/android/server/wm/WindowManagerService;->setSandboxDisplayApis(IZ)V

    return v0

    :pswitch_341  #0xe
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runResetLetterboxStyle()I

    move-result p0

    return p0

    :pswitch_346  #0xd
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerShellCommand;->runGetLetterboxStyle(Ljava/io/PrintWriter;)V

    return v0

    :pswitch_34a  #0xc
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetLetterboxStyle()I

    move-result p0

    return p0

    :pswitch_34f  #0xb
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerShellCommand;->runDumpVisibleWindowViews(Ljava/io/PrintWriter;)V

    return v0

    :pswitch_353  #0xa
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerShellCommand;->runGetIgnoreOrientationRequest(Ljava/io/PrintWriter;)V

    return v0

    :pswitch_357  #0x9
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetIgnoreOrientationRequest(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_35c  #0x8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_366

    invoke-virtual {p0, v0, v5}, Lcom/android/server/wm/WindowManagerShellCommand;->printFixedToUserRotation(ILjava/io/PrintWriter;)I

    return v0

    :cond_366
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37c

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    move-object v9, v6

    move v6, p1

    move-object p1, v9

    goto :goto_37d

    :cond_37c
    move v6, v0

    :goto_37d
    if-nez p1, :cond_384

    invoke-virtual {p0, v6, v5}, Lcom/android/server/wm/WindowManagerShellCommand;->printFixedToUserRotation(ILjava/io/PrintWriter;)I

    move-result p0
    :try_end_383
    .catch Landroid/os/RemoteException; {:try_start_32c .. :try_end_383} :catch_26

    return p0

    :cond_384
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_550

    :goto_38b
    move v7, v3

    goto :goto_3bc

    :sswitch_38d
    const-string/jumbo v7, "default"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_397

    goto :goto_38b

    :cond_397
    move v7, v1

    goto :goto_3bc

    :sswitch_399
    const-string/jumbo v7, "disabled"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3a3

    goto :goto_38b

    :cond_3a3
    move v7, v2

    goto :goto_3bc

    :sswitch_3a5
    const-string/jumbo v7, "enabled_if_no_auto_rotation"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3af

    goto :goto_38b

    :cond_3af
    move v7, v4

    goto :goto_3bc

    :sswitch_3b1
    const-string/jumbo v7, "enabled"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3bb

    goto :goto_38b

    :cond_3bb
    move v7, v0

    :goto_3bc
    packed-switch v7, :pswitch_data_562

    :try_start_3bf
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: expecting enabled, disabled or default, but we get "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :pswitch_3cd  #0x3
    move v1, v0

    goto :goto_3d2

    :pswitch_3cf  #0x2
    move v1, v4

    goto :goto_3d2

    :pswitch_3d1  #0x0
    move v1, v2

    :goto_3d2
    :pswitch_3d2  #0x1
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v6, v1}, Lcom/android/server/wm/WindowManagerService;->setFixedToUserRotation(II)V

    return v0

    :pswitch_3d8  #0x7
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplayUserRotation(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_3dd  #0x6
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object p1

    instance-of v0, p1, Lcom/android/internal/protolog/LegacyProtoLogImpl;

    if-nez v0, :cond_3f1

    instance-of v0, p1, Lcom/android/internal/protolog/PerfettoProtoLogImpl;

    if-eqz v0, :cond_3ea

    goto :goto_3f1

    :cond_3ea
    const-string/jumbo p0, "ProtoLog impl doesn\'t support handling commands"

    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_3f1
    :goto_3f1
    instance-of v0, p1, Lcom/android/internal/protolog/LegacyProtoLogImpl;

    if-eqz v0, :cond_3fc

    check-cast p1, Lcom/android/internal/protolog/LegacyProtoLogImpl;

    invoke-virtual {p1, p0}, Lcom/android/internal/protolog/LegacyProtoLogImpl;->onShellCommand(Landroid/os/ShellCommand;)I

    move-result p0

    goto :goto_402

    :cond_3fc
    check-cast p1, Lcom/android/internal/protolog/PerfettoProtoLogImpl;

    invoke-virtual {p1, p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->onShellCommand(Landroid/os/ShellCommand;)I

    move-result p0

    :goto_402
    if-eqz p0, :cond_40a

    const-string/jumbo p1, "Not handled, please use `adb shell dumpsys activity service SystemUIService WMShell` if you are looking for ProtoLog in WMShell"

    invoke-virtual {v5, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_40a
    return p0

    :pswitch_40b  #0x5
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracingLegacy;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowTracingLegacy;->onShellCommand(Landroid/os/ShellCommand;)I

    move-result p0

    return p0

    :pswitch_414  #0x4
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    return v0

    :pswitch_41b  #0x3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "auto"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_432

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplayScalingMode(II)V

    return v0

    :cond_432
    const-string/jumbo v1, "off"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_445

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0, v4}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplayScalingMode(II)V

    return v0

    :cond_445
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: scaling must be \'auto\' or \'off\'"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :pswitch_44f  #0x2
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplayFoldedArea(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_454  #0x1
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplayDensity(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    :pswitch_459  #0x0
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerShellCommand;->runDisplaySize(Ljava/io/PrintWriter;)I

    move-result p0
    :try_end_45d
    .catch Landroid/os/RemoteException; {:try_start_3bf .. :try_end_45d} :catch_26

    return p0

    :goto_45e
    const-string/jumbo p1, "Remote exception: "

    invoke-static {p1, p0, v5}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    :cond_464
    :goto_464
    :pswitch_464  #0x1d
    return v3

    nop

    :sswitch_data_466
    .sparse-switch
        -0x7b0b1f2d -> :sswitch_1ad
        -0x7753caae -> :sswitch_1a1
        -0x74c7d6cc -> :sswitch_195
        -0x6d06f812 -> :sswitch_189
        -0x64eeec9e -> :sswitch_17d
        -0x6406bcdd -> :sswitch_171
        -0x630d178f -> :sswitch_165
        -0x3f9f2f3e -> :sswitch_15a
        -0x3d8c3fd4 -> :sswitch_14e
        -0x3c7b3dfb -> :sswitch_141
        -0x18d27a9a -> :sswitch_134
        -0x14126e26 -> :sswitch_128
        -0xe8e7aa0 -> :sswitch_11b
        -0xdad5077 -> :sswitch_10f
        0x35e001 -> :sswitch_103
        0x4cc93b -> :sswitch_f6
        0x58b5840 -> :sswitch_e9
        0x6761d4f -> :sswitch_dc
        0x6855e30 -> :sswitch_cf
        0x7a16ad4 -> :sswitch_c2
        0xb3ebb40 -> :sswitch_b6
        0xfbbc71c -> :sswitch_a9
        0x1466cb5f -> :sswitch_9d
        0x14833995 -> :sswitch_90
        0x2b9fb14b -> :sswitch_83
        0x2ca8ca5e -> :sswitch_76
        0x412e0196 -> :sswitch_69
        0x4fab00ad -> :sswitch_5c
        0x579b8b94 -> :sswitch_4f
        0x5c8c94e8 -> :sswitch_43
        0x5e693ca7 -> :sswitch_36
        0x6c8db6b4 -> :sswitch_29
        0x71e5fb87 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_4ec
    .packed-switch 0x0
        :pswitch_459  #00000000
        :pswitch_454  #00000001
        :pswitch_44f  #00000002
        :pswitch_41b  #00000003
        :pswitch_414  #00000004
        :pswitch_40b  #00000005
        :pswitch_3dd  #00000006
        :pswitch_3d8  #00000007
        :pswitch_35c  #00000008
        :pswitch_357  #00000009
        :pswitch_353  #0000000a
        :pswitch_34f  #0000000b
        :pswitch_34a  #0000000c
        :pswitch_346  #0000000d
        :pswitch_341  #0000000e
        :pswitch_2d7  #0000000f
        :pswitch_2d2  #00000010
        :pswitch_2ce  #00000011
        :pswitch_2ca  #00000012
        :pswitch_2c6  #00000013
        :pswitch_2c1  #00000014
        :pswitch_2a2  #00000015
        :pswitch_27d  #00000016
        :pswitch_279  #00000017
        :pswitch_275  #00000018
        :pswitch_24b  #00000019
        :pswitch_246  #0000001a
        :pswitch_211  #0000001b
        :pswitch_1f8  #0000001c
        :pswitch_464  #0000001d
        :pswitch_1e6  #0000001e
        :pswitch_1d4  #0000001f
        :pswitch_1c4  #00000020
    .end packed-switch

    :sswitch_data_532
    .sparse-switch
        0x30 -> :sswitch_31f
        0x31 -> :sswitch_314
        0x36758e -> :sswitch_308
        0x5cb1923 -> :sswitch_2fe
    .end sparse-switch

    :pswitch_data_544
    .packed-switch 0x0
        :pswitch_33a  #00000000
        :pswitch_33b  #00000001
        :pswitch_33b  #00000002
        :pswitch_33a  #00000003
    .end packed-switch

    :sswitch_data_550
    .sparse-switch
        -0x5ff074bf -> :sswitch_3b1
        -0x2dc7ed0c -> :sswitch_3a5
        0x10263a7c -> :sswitch_399
        0x5c13d641 -> :sswitch_38d
    .end sparse-switch

    :pswitch_data_562
    .packed-switch 0x0
        :pswitch_3d1  #00000000
        :pswitch_3d2  #00000001
        :pswitch_3cf  #00000002
        :pswitch_3cd  #00000003
    .end packed-switch
.end method

.method public final onHelp()V
    .registers 5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "Window manager (window) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  size [reset|WxH|WdpxHdp] [-d DISPLAY_ID]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Return or override display size."

    const-string v1, "    width and height in pixels unless suffixed with \'dp\'."

    const-string v2, "  density [reset|DENSITY] [-d DISPLAY_ID] [-u UNIQUE_ID]"

    const-string v3, "    Return or override display density."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  folded-area [reset|LEFT,TOP,RIGHT,BOTTOM]"

    const-string v1, "    Return or override folded area."

    const-string v2, "  scaling [off|auto] [-d DISPLAY_ID]"

    const-string v3, "    Set display scaling mode."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  dismiss-keyguard"

    const-string v1, "    Dismiss the keyguard, prompting user for auth if\u00a0necessary."

    const-string v2, "  disable-blur [true|1|false|0]"

    const-string v3, "  user-rotation [-d DISPLAY_ID] [free|lock] [rotation]"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    Print or set user rotation mode and user rotation."

    const-string v1, "  dump-visible-window-views"

    const-string v2, "    Dumps the encoded view hierarchies of visible windows"

    const-string v3, "  fixed-to-user-rotation [-d DISPLAY_ID] [enabled|disabled|default"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "      |enabled_if_no_auto_rotation]"

    const-string v1, "    Print or set rotating display for app requested orientation."

    const-string v2, "  set-ignore-orientation-request [-d DISPLAY_ID] [reset|true|1|false|0]"

    const-string v3, "  get-ignore-orientation-request [-d DISPLAY_ID] "

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    If app requested orientation should be ignored."

    const-string v1, "  set-sandbox-display-apis [true|1|false|0]"

    const-string v2, "    Sets override of Display APIs getRealSize / getRealMetrics to reflect "

    const-string v3, "    DisplayArea of the activity, or the window bounds if in letterbox or"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    Size Compat Mode."

    const-string v1, "  set-letterbox-style"

    const-string v2, "    Sets letterbox style using the following options:"

    const-string v3, "      --aspectRatio aspectRatio"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "        Aspect ratio of letterbox for fixed orientation. If aspectRatio <= 1.0"

    const-string v1, "        both it and R.dimen.config_fixedOrientationLetterboxAspectRatio will"

    const-string v2, "        be ignored and framework implementation will determine aspect ratio."

    const-string v3, "      --minAspectRatioForUnresizable aspectRatio"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "        Default min aspect ratio for unresizable apps which is used when an"

    const-string v3, "        app is eligible for the size compat mode.  If aspectRatio <= 1.0"

    invoke-static {p0, v0, v3, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "      --cornerRadius radius"

    const-string v1, "        Corners radius (in pixels) for activities in the letterbox mode."

    const-string v2, "        If radius < 0, both R.integer.config_letterboxActivityCornersRadius"

    const-string v3, "        and it will be ignored and corners of the activity won\'t be rounded."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "      --backgroundType [reset|solid_color|app_color_background"

    const-string v1, "          |app_color_background_floating|wallpaper]"

    const-string v2, "        Type of background used in the letterbox mode."

    const-string v3, "      --backgroundColor color"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "        Color of letterbox which is be used when letterbox background type"

    const-string v1, "        is \'solid-color\'. Use (set)get-letterbox-style to check and control"

    const-string v2, "        letterbox background type. See Color#parseColor for allowed color"

    const-string v3, "        formats (#RRGGBB and some colors by name, e.g. magenta or olive)."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "      --backgroundColorResource resource_name"

    const-string v1, "        Color resource name of letterbox background which is used when"

    const-string v2, "        background type is \'solid-color\'. Use (set)get-letterbox-style to"

    const-string v3, "        check and control background type. Parameter is a color resource"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "        name, for example, @android:color/system_accent2_50."

    const-string v1, "      --wallpaperBlurRadius radius"

    const-string v2, "        Blur radius for \'wallpaper\' letterbox background. If radius <= 0"

    const-string v3, "        both it and R.dimen.config_letterboxBackgroundWallpaperBlurRadius"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "        are ignored and 0 is used."

    const-string v1, "      --wallpaperDarkScrimAlpha alpha"

    const-string v2, "        Alpha of a black translucent scrim shown over \'wallpaper\'"

    const-string v3, "        letterbox background. If alpha < 0 or >= 1 both it and"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "        R.dimen.config_letterboxBackgroundWallaperDarkScrimAlpha are ignored"

    const-string v1, "        and 0.0 (transparent) is used instead."

    const-string v2, "      --horizontalPositionMultiplier multiplier"

    const-string v3, "        Horizontal position of app window center. If multiplier < 0 or > 1,"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "        both it and R.dimen.config_letterboxHorizontalPositionMultiplier"

    const-string v1, "        are ignored and central position (0.5) is used."

    const-string v2, "      --verticalPositionMultiplier multiplier"

    const-string v3, "        Vertical position of app window center. If multiplier < 0 or > 1,"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "        both it and R.dimen.config_letterboxVerticalPositionMultiplier"

    const-string v2, "      --isHorizontalReachabilityEnabled [true|1|false|0]"

    const-string v3, "        Whether horizontal reachability repositioning is allowed for "

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "        letterboxed fullscreen apps in landscape device orientation."

    const-string v1, "      --isVerticalReachabilityEnabled [true|1|false|0]"

    const-string v2, "        Whether vertical reachability repositioning is allowed for "

    const-string v3, "        letterboxed fullscreen apps in portrait device orientation."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "      --defaultPositionForHorizontalReachability [left|center|right]"

    const-string v1, "        Default position of app window when horizontal reachability is."

    const-string v2, "        enabled."

    const-string v3, "      --defaultPositionForVerticalReachability [top|center|bottom]"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "        Default position of app window when vertical reachability is."

    const-string v1, "      --persistentPositionForHorizontalReachability [left|center|right]"

    const-string v3, "        Persistent position of app window when horizontal reachability is."

    invoke-static {p0, v0, v2, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "      --persistentPositionForVerticalReachability [top|center|bottom]"

    const-string v1, "        Persistent position of app window when vertical reachability is."

    invoke-static {p0, v2, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "      --isEducationEnabled [true|1|false|0]"

    const-string v1, "        Whether education is allowed for letterboxed fullscreen apps."

    const-string v2, "      --isSplitScreenAspectRatioForUnresizableAppsEnabled [true|1|false|0]"

    const-string v3, "        Whether using split screen aspect ratio as a default aspect ratio for"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "        unresizable apps."

    const-string v1, "      --isTranslucentLetterboxingEnabled [true|1|false|0]"

    const-string v2, "        Whether letterboxing for translucent activities is enabled."

    const-string v3, "      --isUserAppAspectRatioSettingsEnabled [true|1|false|0]"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "        Whether user aspect ratio settings are enabled."

    const-string v1, "      --isUserAppAspectRatioFullscreenEnabled [true|1|false|0]"

    const-string v2, "        Whether user aspect ratio fullscreen option is enabled."

    const-string v3, "      --isCameraCompatRefreshEnabled [true|1|false|0]"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "        Whether camera compatibility refresh is enabled."

    const-string v1, "      --isCameraCompatRefreshCycleThroughStopEnabled [true|1|false|0]"

    const-string v2, "        Whether activity \"refresh\" in camera compatibility treatment should"

    const-string v3, "        happen using the \"stopped -> resumed\" cycle rather than"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "        \"paused -> resumed\" cycle."

    const-string v1, "      --cameraCompatAspectRatio aspectRatio"

    const-string v2, "        Aspect ratio of letterbox for fixed-orientation camera apps, during"

    const-string v3, "        freeform camera compat mode. If aspectRatio <= 1.0"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "        it will be ignored."

    const-string v1, "      --isCameraCompatFreeformWindowingTreatmentEnabled [true|1|false|0]"

    const-string v2, "        Whether camera compat treatment is enabled in freeform mode for all"

    const-string v3, "        eligible apps."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  reset-letterbox-style [aspectRatio|cornerRadius|backgroundType"

    const-string v1, "      |backgroundColor|wallpaperBlurRadius|wallpaperDarkScrimAlpha"

    const-string v2, "      |horizontalPositionMultiplier|verticalPositionMultiplier"

    const-string v3, "      |isHorizontalReachabilityEnabled|isVerticalReachabilityEnabled"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "      |isEducationEnabled|defaultPositionMultiplierForHorizontalReachability"

    const-string v1, "      |isTranslucentLetterboxingEnabled|isUserAppAspectRatioSettingsEnabled"

    const-string v2, "      |persistentPositionMultiplierForHorizontalReachability"

    const-string v3, "      |persistentPositionMultiplierForVerticalReachability"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "      |defaultPositionMultiplierForVerticalReachability"

    const-string v1, "      |cameraCompatAspectRatio"

    const-string v2, "      |isCameraCompatFreeformWindowingTreatmentEnabled]"

    const-string v3, "    Resets overrides to default values for specified properties separated"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    by space, e.g. \'reset-letterbox-style aspectRatio cornerRadius\'."

    const-string v1, "    If no arguments provided, all values will be reset."

    const-string v2, "  get-letterbox-style"

    const-string v3, "    Prints letterbox style configuration."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  set-multi-window-config"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Sets options to determine if activity should be shown in multi window:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      --supportsNonResizable [configValue]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "        Whether the device supports non-resizable activity in multi window."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "        -1: The device doesn\'t support non-resizable in multi window."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "         0: The device supports non-resizable in multi window only if"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "            this is a large screen device."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "         1: The device always supports non-resizable in multi window."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      --respectsActivityMinWidthHeight [configValue]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "        Whether the device checks the activity min width/height to determine "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "        if it can be shown in multi window."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "        -1: The device ignores the activity min width/height when determining"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "            if it can be shown in multi window."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "         0: If this is a small screen, the device compares the activity min"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "            width/height with the min multi window modes dimensions"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "            the device supports to determine if the activity can be shown in"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "            multi window."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "         1: The device always compare the activity min width/height with the"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "            min multi window dimensions the device supports to determine if"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "            the activity can be shown in multi window."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  get-multi-window-config"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Prints values of the multi window config options."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  reset-multi-window-config"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Resets overrides to default values of the multi window config options."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  reset-freeze-recent-tasks"

    const-string v1, "    Resets the spatial ordering of the recent tasks list"

    const-string v2, "  set-display-windowing-mode [-d DISPLAY_ID] [mode_id]"

    const-string v3, "    As mode_id, use 0 for undefined, 5 for freeform, 1 for fullscreen"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  get-display-windowing-mode [-d DISPLAY_ID]"

    const-string v1, "  reset [-d DISPLAY_ID]"

    const-string v2, "    Reset all override settings."

    const-string v3, "  shell <cmd> ..."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    Runs a WMShell command.  To see a full list of available wmshell commands run \'adb shell wm shell help\'"

    const-string v1, "  size-density [reset|WxH|WdpxHdp] [reset|DENSITY]"

    const-string v2, "    Return or override display size & density at once."

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final parseDimension(ILjava/lang/String;)I
    .registers 5

    const-string/jumbo v0, "px"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {p2, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_19
    const-string/jumbo v0, "dp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const/16 v0, 0xa0

    :try_start_24
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplayDensity(I)I

    move-result p0
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2a} :catch_2b

    goto :goto_2c

    :catch_2b
    move p0, v0

    :goto_2c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    mul-int/2addr p1, p0

    div-int/2addr p1, v0

    return p1

    :cond_3d
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final printDisplayUserRotation(ILjava/io/PrintWriter;)I
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayUserRotation(I)I

    move-result v0

    if-gez v0, :cond_13

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: check logcat for more details."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_13
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->isDisplayRotationFrozen(I)Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_23

    const-string/jumbo p0, "free"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p1

    :cond_23
    const-string/jumbo p0, "lock "

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    return p1
.end method

.method public final printFixedToUserRotation(ILjava/io/PrintWriter;)I
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_8
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    const/4 v0, -0x1

    if-nez p1, :cond_22

    const-string/jumbo p1, "WindowManager"

    const-string/jumbo v2, "Trying to get fixed to user rotation for a missing display."

    invoke-static {p1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    move p1, v0

    goto :goto_2a

    :catchall_20
    move-exception p0

    goto :goto_5c

    :cond_22
    :try_start_22
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget p1, p1, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :goto_2a
    const/4 v1, 0x0

    if-eqz p1, :cond_55

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4e

    const/4 v2, 0x2

    if-eq p1, v2, :cond_47

    const/4 v2, 0x3

    if-eq p1, v2, :cond_40

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: check logcat for more details."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_40
    const-string/jumbo p0, "enabled_if_no_auto_rotation"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_47
    const-string/jumbo p0, "enabled"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_4e
    const-string/jumbo p0, "disabled"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_55
    const-string/jumbo p0, "default"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :goto_5c
    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final printInitialDisplayDensity(ILjava/io/PrintWriter;)V
    .registers 6

    const-string/jumbo v0, "Override density: "

    const-string/jumbo v1, "Physical density: "

    :try_start_6
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_DYNAMIC_RESOLUTION_CONTROL:Z

    if-eqz v2, :cond_f

    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    goto :goto_15

    :catch_d
    move-exception p0

    goto :goto_3c

    :cond_f
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplayDensity(I)I

    move-result v2

    :goto_15
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplayDensity(I)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eq v2, p0, :cond_42

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_3b} :catch_d

    return-void

    :goto_3c
    const-string/jumbo p1, "Remote exception: "

    invoke-static {p1, p0, p2}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    :cond_42
    return-void
.end method

.method public final printInitialDisplaySize(ILjava/io/PrintWriter;)V
    .registers 9

    const-string/jumbo v0, "x"

    const-string/jumbo v1, "Override size: "

    const-string/jumbo v2, "Physical size: "

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    :try_start_13
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, p1, v3}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_55} :catch_56

    return-void

    :catch_56
    move-exception p0

    const-string/jumbo p1, "Remote exception: "

    invoke-static {p1, p0, p2}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    :cond_5d
    return-void
.end method

.method public final resetLetterboxStyle()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050107

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultMinAspectRatioForUnresizableApps:F

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxActivityCornersRadius:I

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    const/4 v2, -0x1

    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundTypeOverride:I

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

    iput-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050105

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperBlurRadiusPx:I

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050104

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050108

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105010c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxVerticalPositionMultiplier:F

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mIsHorizontalReachabilityEnabled:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mIsVerticalReachabilityEnabled:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mIsAutomaticReachabilityInBookModeEnabled:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForHorizontalReachability:I

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForVerticalReachability:I

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v2

    iget-object v4, v1, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForHorizontalReachability(IZ)V

    iget-object v1, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v1

    invoke-virtual {v4, v1, v2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForHorizontalReachability(IZ)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v4, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v4

    iget-object v5, v1, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    invoke-virtual {v5, v4, v3}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForVerticalReachability(IZ)V

    iget-object v1, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v1

    invoke-virtual {v5, v1, v2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForVerticalReachability(IZ)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v4, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11101e7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/server/wm/AppCompatConfiguration;->mIsEducationEnabled:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v4, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11101eb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/server/wm/AppCompatConfiguration;->mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v4, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11101e5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/server/wm/AppCompatConfiguration;->mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iput-boolean v3, v1, Lcom/android/server/wm/AppCompatConfiguration;->mTranslucentLetterboxingOverrideEnabled:Z

    iput-boolean v3, v1, Lcom/android/server/wm/AppCompatConfiguration;->mUserAppAspectRatioSettingsOverrideEnabled:Z

    iput-boolean v3, v1, Lcom/android/server/wm/AppCompatConfiguration;->mUserAppAspectRatioFullscreenOverrideEnabled:Z

    iput-boolean v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatTreatmentRefreshEnabled:Z

    iput-boolean v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatRefreshCycleThroughStopEnabled:Z

    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x105013a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mCameraCompatAspectRatio:F

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iput-boolean v3, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatFreeformWindowingTreatmentEnabled:Z

    monitor-exit v0
    :try_end_14f
    .catchall {:try_start_8 .. :try_end_14f} :catchall_153

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_153
    move-exception p0

    :try_start_154
    monitor-exit v0
    :try_end_155
    .catchall {:try_start_154 .. :try_end_155} :catchall_153

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final runDisplayDensity(Ljava/io/PrintWriter;)I
    .registers 10

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "-u"

    if-nez v2, :cond_1c

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "Error: bad number "

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_45

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    :try_start_2b
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_2f} :catch_30

    goto :goto_62

    :catch_30
    move-exception v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_61

    :cond_45
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->getDisplayIdByUniqueId(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_62

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: the uniqueId is invalid "

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_61
    :goto_61
    move v0, v6

    :cond_62
    :goto_62
    if-nez v2, :cond_68

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplayDensity(ILjava/io/PrintWriter;)V

    return v6

    :cond_68
    const-string/jumbo p1, "reset"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_72

    goto :goto_85

    :cond_72
    :try_start_72
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_76
    .catch Ljava/lang/NumberFormatException; {:try_start_72 .. :try_end_76} :catch_94

    const/16 v1, 0x48

    if-ge p1, v1, :cond_84

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: density must be >= 72"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :cond_84
    move v5, p1

    :goto_85
    const/4 p1, -0x2

    if-lez v5, :cond_8e

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v0, v5, p1}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplayDensityForUser(III)V

    goto :goto_93

    :cond_8e
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowManagerService;->clearForcedDisplayDensityForUser(II)V

    :goto_93
    return v6

    :catch_94
    move-exception p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5
.end method

.method public final runDisplayFoldedArea(Ljava/io/PrintWriter;)I
    .registers 8

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    if-nez v0, :cond_7f

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_15
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_7a

    :try_start_1b
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast p0, Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz p0, :cond_31

    iget-object v4, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2e

    iget-object p0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    goto :goto_36

    :cond_2e
    iget-object p0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldedArea:Landroid/graphics/Rect;

    goto :goto_36

    :cond_31
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    :goto_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_1b .. :try_end_37} :catchall_74

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_49

    const-string p0, "Folded area: none"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_73

    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Folded area: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    :goto_73
    return v2

    :catchall_74
    move-exception p0

    :try_start_75
    monitor-exit v3
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    :try_start_76
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_7a
    .catchall {:try_start_76 .. :try_end_7a} :catchall_7a

    :catchall_7a
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_7f
    const-string/jumbo p1, "reset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8c

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_ce

    :cond_8c
    const-string p1, "(-?\\d+),(-?\\d+),(-?\\d+),(-?\\d+)"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_a7

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: area should be LEFT,TOP,RIGHT,BOTTOM"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_a7
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, v0, v3, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_ce
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->setOverrideFoldedArea(Landroid/graphics/Rect;)V

    return v2
.end method

.method public final runDisplaySize(Ljava/io/PrintWriter;)I
    .registers 7

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v0, :cond_f

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplaySize(ILjava/io/PrintWriter;)V

    return v2

    :cond_f
    const-string v3, "-d"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplaySize(ILjava/io/PrintWriter;)V

    return v2

    :cond_1b
    const-string/jumbo p1, "reset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v3, -0x1

    if-eqz p1, :cond_27

    move p1, v3

    goto :goto_4c

    :cond_27
    const/16 p1, 0x78

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-lez p1, :cond_73

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt p1, v4, :cond_38

    goto :goto_73

    :cond_38
    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :try_start_42
    invoke-virtual {p0, v1, v4}, Lcom/android/server/wm/WindowManagerShellCommand;->parseDimension(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->parseDimension(ILjava/lang/String;)I

    move-result v3
    :try_end_4a
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_4a} :catch_5c

    move p1, v3

    move v3, v0

    :goto_4c
    if-ltz v3, :cond_56

    if-ltz p1, :cond_56

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v1, v3, p1}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySize(III)V

    return v2

    :cond_56
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->clearForcedDisplaySize(I)V

    return v2

    :catch_5c
    move-exception p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: bad number "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_73
    :goto_73
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: bad size "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3
.end method

.method public final runDisplaySizeDensity(Ljava/io/PrintWriter;)I
    .registers 12

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    move-result v1

    const-string v2, "Error: bad number "

    const-string/jumbo v3, "reset"

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-nez v0, :cond_15

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplaySize(ILjava/io/PrintWriter;)V

    goto :goto_20

    :cond_15
    const-string v6, "-d"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplaySize(ILjava/io/PrintWriter;)V

    :goto_20
    move v6, v5

    :goto_21
    move v7, v6

    goto :goto_4f

    :cond_23
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    move v6, v4

    goto :goto_21

    :cond_2b
    const/16 v6, 0x78

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_e0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-lt v6, v7, :cond_3d

    goto/16 :goto_e0

    :cond_3d
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :try_start_47
    invoke-virtual {p0, v1, v7}, Lcom/android/server/wm/WindowManagerShellCommand;->parseDimension(ILjava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v1, v6}, Lcom/android/server/wm/WindowManagerShellCommand;->parseDimension(ILjava/lang/String;)I

    move-result v6
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_47 .. :try_end_4f} :catch_cb

    :goto_4f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_60

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_60

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->printInitialDisplayDensity(ILjava/io/PrintWriter;)V

    move p1, v5

    goto :goto_91

    :cond_60
    if-eqz v8, :cond_90

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_69

    goto :goto_90

    :cond_69
    :try_start_69
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_6d
    .catch Ljava/lang/NumberFormatException; {:try_start_69 .. :try_end_6d} :catch_7b

    const/16 v2, 0x48

    if-ge p1, v2, :cond_91

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: density must be >= 72"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :catch_7b
    move-exception p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_90
    :goto_90
    move p1, v4

    :cond_91
    :goto_91
    if-eqz v0, :cond_ca

    if-nez v8, :cond_9c

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9c

    goto :goto_ca

    :cond_9c
    if-ltz v7, :cond_c5

    if-ltz v6, :cond_c5

    if-lez p1, :cond_c5

    :try_start_a2
    new-instance v0, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;

    invoke-direct {v0, v5}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;-><init>(I)V

    invoke-virtual {v0, v7}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->setWidth(I)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->setHeight(I)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->setDensity(I)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->setSaveToSettings(Z)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->setForcedHideCutout(I)Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo$Builder;->build()Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySizeDensityWithInfo(Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;)V

    return v5

    :cond_c5
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->clearForcedDisplaySizeDensity(I)V
    :try_end_ca
    .catch Landroid/os/RemoteException; {:try_start_a2 .. :try_end_ca} :catch_ca

    :catch_ca
    :cond_ca
    :goto_ca
    return v5

    :catch_cb
    move-exception p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_e0
    :goto_e0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: bad size "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4
.end method

.method public final runDisplayUserRotation(Ljava/io/PrintWriter;)I
    .registers 8

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->printDisplayUserRotation(ILjava/io/PrintWriter;)I

    move-result p0

    return p0

    :cond_c
    const-string v2, "-d"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    move v2, v0

    move-object v0, v5

    goto :goto_25

    :cond_24
    move v2, v1

    :goto_25
    if-nez v0, :cond_2c

    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/WindowManagerShellCommand;->printDisplayUserRotation(ILjava/io/PrintWriter;)I

    move-result p0

    return p0

    :cond_2c
    const-string/jumbo p1, "free"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo p1, "WindowManagerShellCommand#free"

    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/WindowManagerService;->thawDisplayRotation(ILjava/lang/String;)V

    return v1

    :cond_3e
    const-string/jumbo p1, "lock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_52

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: argument needs to be either -d, free or lock."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_52
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5f

    :try_start_58
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_60

    :catch_5d
    move-exception p1

    goto :goto_69

    :cond_5f
    move p1, v0

    :goto_60
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v4, "WindowManagerShellCommand#lock"

    invoke-virtual {v3, v2, p1, v4}, Lcom/android/server/wm/WindowManagerService;->freezeDisplayRotation(IILjava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/IllegalArgumentException; {:try_start_58 .. :try_end_68} :catch_5d

    return v1

    :goto_69
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0
.end method

.method public final runDumpVisibleWindowViews(Ljava/io/PrintWriter;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v1, "android.permission.DUMP"

    const-string/jumbo v2, "runDumpVisibleWindowViews()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission$1(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_93

    :try_start_f
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_18} :catch_6c

    :try_start_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_66

    :try_start_25
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    if-eqz v4, :cond_30

    iget v4, v4, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    goto :goto_31

    :cond_30
    const/4 v4, -0x1

    :goto_31
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v5, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v4, v1}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowManagerShellCommand;ILjava/util/ArrayList;)V

    const/4 p0, 0x0

    invoke-virtual {v3, v5, p0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_25 .. :try_end_3d} :catchall_6e

    :try_start_3d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :catch_44
    :goto_44
    if-ge p0, v2, :cond_68

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 p0, p0, 0x1

    check-cast v3, Landroid/util/Pair;
    :try_end_4e
    .catchall {:try_start_3d .. :try_end_4e} :catchall_66

    :try_start_4e
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/os/ByteTransferPipe;

    invoke-virtual {v4}, Lcom/android/internal/os/ByteTransferPipe;->get()[B

    move-result-object v4
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_56} :catch_44
    .catchall {:try_start_4e .. :try_end_56} :catchall_66

    :try_start_56
    new-instance v5, Ljava/util/zip/ZipEntry;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {v0, v4}, Ljava/util/zip/ZipOutputStream;->write([B)V
    :try_end_65
    .catchall {:try_start_56 .. :try_end_65} :catchall_66

    goto :goto_44

    :catchall_66
    move-exception p0

    goto :goto_74

    :cond_68
    :try_start_68
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_92

    :catch_6c
    move-exception p0

    goto :goto_7d

    :catchall_6e
    move-exception p0

    :try_start_6f
    monitor-exit v2
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    :try_start_70
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_74
    .catchall {:try_start_70 .. :try_end_74} :catchall_66

    :goto_74
    :try_start_74
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    goto :goto_7c

    :catchall_78
    move-exception v0

    :try_start_79
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7c
    throw p0
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7d} :catch_6c

    :goto_7d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error fetching dump "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_92
    return-void

    :cond_93
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Requires DUMP permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final runGetDisplayWindowingMode(Ljava/io/PrintWriter;)V
    .registers 5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->getWindowingMode(I)I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "display windowing mode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for displayId="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runGetIgnoreOrientationRequest(Ljava/io/PrintWriter;)V
    .registers 5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService;->getIgnoreOrientationRequest(I)Z

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ignoreOrientationRequest "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " for displayId="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runGetLetterboxStyle(Ljava/io/PrintWriter;)V
    .registers 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Is camera compatibility freeform treatment enabled for all apps: "

    const-string v3, "Default aspect ratio for camera compat freeform: "

    const-string v4, "Is the fullscreen option in user aspect ratio settings enabled: "

    const-string v5, "Is the user aspect ratio settings enabled: "

    const-string v6, "Is letterboxing for translucent activities enabled: "

    const-string v7, "    Wallpaper dark scrim alpha: "

    const-string v8, "    Wallpaper blur radius: "

    const-string v9, "    Background color: "

    const-string v10, "Background type: "

    const-string v11, "    Refresh using \"stopped -> resumed\" cycle: "

    const-string v12, "    Is activity \"refresh\" in camera compatibility treatment enabled: "

    const-string v13, "Is using display aspect ratio as aspect ratio for all letterboxed apps: "

    const-string v14, "Is using split screen aspect ratio as aspect ratio for unresizable apps: "

    const-string v15, "Is education enabled: "

    move-object/from16 v16, v2

    const-string v2, "Current position for vertical reachability:"

    move-object/from16 v17, v3

    const-string v3, "Current position for horizontal reachability:"

    move-object/from16 v18, v4

    const-string v4, "Default position for vertical reachability: "

    move-object/from16 v19, v5

    const-string v5, "Default position for horizontal reachability: "

    move-object/from16 v20, v6

    const-string v6, "Is automatic reachability in book mode enabled: "

    move-object/from16 v21, v7

    const-string v7, "Is vertical reachability enabled: "

    move-object/from16 v22, v8

    const-string v8, "Is horizontal reachability enabled: "

    move-object/from16 v23, v9

    const-string v9, "Default min aspect ratio for unresizable apps: "

    move-object/from16 v24, v10

    const-string v10, "Aspect ratio: "

    move-object/from16 v25, v11

    const-string/jumbo v11, "Vertical position multiplier for reachability: "

    move-object/from16 v26, v12

    const-string v12, "Horizontal position multiplier for reachability: "

    move-object/from16 v27, v13

    const-string/jumbo v13, "Vertical position multiplier (tabletop mode): "

    move-object/from16 v28, v14

    const-string v14, "Horizontal position multiplier (book mode): "

    move-object/from16 v29, v15

    const-string/jumbo v15, "Vertical position multiplier: "

    move-object/from16 v30, v2

    const-string v2, "Horizontal position multiplier: "

    move-object/from16 v31, v3

    const-string v3, "Corner radius: "

    move-object/from16 v32, v4

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4

    move-object/from16 v33, v5

    :try_start_6f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget v3, v3, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxActivityCornersRadius:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget v2, v2, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget v3, v3, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxVerticalPositionMultiplier:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget v3, v3, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBookModePositionMultiplier:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget v3, v3, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxTabletopModePositionMultiplier:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/wm/AppCompatConfiguration;->getHorizontalMultiplierForReachability(Z)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/AppCompatConfiguration;->getVerticalMultiplierForReachability(Z)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget v3, v3, Lcom/android/server/wm/AppCompatConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget v3, v3, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultMinAspectRatioForUnresizableApps:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-boolean v3, v3, Lcom/android/server/wm/AppCompatConfiguration;->mIsHorizontalReachabilityEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-boolean v3, v3, Lcom/android/server/wm/AppCompatConfiguration;->mIsVerticalReachabilityEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-boolean v3, v3, Lcom/android/server/wm/AppCompatConfiguration;->mIsAutomaticReachabilityInBookModeEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget v2, v2, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForHorizontalReachability:I

    invoke-static {v2}, Lcom/android/server/wm/AppCompatConfiguration;->letterboxHorizontalReachabilityPositionToString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v33

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget v2, v2, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForVerticalReachability:I

    invoke-static {v2}, Lcom/android/server/wm/AppCompatConfiguration;->letterboxVerticalReachabilityPositionToString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v32

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v2, v2, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    iget v2, v2, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForHorizontalReachability:I

    invoke-static {v2}, Lcom/android/server/wm/AppCompatConfiguration;->letterboxHorizontalReachabilityPositionToString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v31

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v2, v2, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    iget v2, v2, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForVerticalReachability:I

    invoke-static {v2}, Lcom/android/server/wm/AppCompatConfiguration;->letterboxVerticalReachabilityPositionToString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v30

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v29

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-boolean v3, v3, Lcom/android/server/wm/AppCompatConfiguration;->mIsEducationEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v28

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-boolean v3, v3, Lcom/android/server/wm/AppCompatConfiguration;->mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v27

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-boolean v3, v3, Lcom/android/server/wm/AppCompatConfiguration;->mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v26

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-boolean v3, v3, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatTreatmentRefreshEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-boolean v3, v3, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatRefreshCycleThroughStopEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v24

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxBackgroundType()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/wm/AppCompatConfiguration;->letterboxBackgroundTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v23

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxBackgroundColor()Landroid/graphics/Color;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Color;->toArgb()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget v3, v3, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperBlurRadiusPx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget v3, v3, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatConfiguration;->isTranslucentLetterboxingEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v19

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatConfiguration;->isUserAppAspectRatioSettingsEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatConfiguration;->isUserAppAspectRatioFullscreenEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget v3, v3, Lcom/android/server/wm/AppCompatConfiguration;->mCameraCompatAspectRatio:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-boolean v0, v0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatFreeformWindowingTreatmentEnabled:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v4
    :try_end_2dd
    .catchall {:try_start_6f .. :try_end_2dd} :catchall_2e1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2e1
    move-exception v0

    :try_start_2e2
    monitor-exit v4
    :try_end_2e3
    .catchall {:try_start_2e2 .. :try_end_2e3} :catchall_2e1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public final runGetMultiWindowConfig(Ljava/io/PrintWriter;)V
    .registers 6

    const-string/jumbo v0, "Respects activity min width/height in multi window: "

    const-string/jumbo v1, "Supports non-resizable in multi window: "

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    :try_start_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsNonResizableMultiWindow:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRespectsActivityMinWidthHeightMultiWindow:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_10 .. :try_end_3b} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_3f
    move-exception p0

    :try_start_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final runReset(Ljava/io/PrintWriter;)V
    .registers 6

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->getDisplayId(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->clearForcedDisplaySize(I)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/WindowManagerService;->clearForcedDisplayDensityForUser(II)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->setOverrideFoldedArea(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplayScalingMode(II)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v3, "WindowManagerShellCommand#runReset"

    invoke-virtual {v1, v0, v3}, Lcom/android/server/wm/WindowManagerService;->thawDisplayRotation(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/WindowManagerService;->setFixedToUserRotation(II)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->resetIgnoreOrientationRequest(I)Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->resetLetterboxStyle()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lcom/android/server/wm/WindowManagerService;->setSandboxDisplayApis(IZ)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->runResetMultiWindowConfig()V

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->setWindowingMode(II)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Reset all settings for displayId="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runResetLetterboxStyle()I
    .registers 7

    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerShellCommand;->resetLetterboxStyle()V

    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :goto_11
    :try_start_11
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2f0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v3, :sswitch_data_2fa

    goto/16 :goto_15d

    :sswitch_27
    const-string/jumbo v3, "isUserAppAspectRatioFullscreenEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15d

    const/16 v3, 0x14

    goto/16 :goto_15e

    :catchall_34
    move-exception p0

    goto/16 :goto_2f5

    :sswitch_37
    const-string/jumbo v3, "isUserAppAspectRatioSettingsEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15d

    const/16 v3, 0x13

    goto/16 :goto_15e

    :sswitch_44
    const-string/jumbo v3, "isCameraCompatRefreshCycleThroughStopEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15d

    const/16 v3, 0x16

    goto/16 :goto_15e

    :sswitch_51
    const-string/jumbo v3, "isSplitScreenAspectRatioForUnresizableAppsEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15d

    const/16 v3, 0x10

    goto/16 :goto_15e

    :sswitch_5e
    const-string/jumbo v3, "backgroundType"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15d

    const/4 v3, 0x3

    goto/16 :goto_15e

    :sswitch_6a
    const-string/jumbo v3, "isCameraCompatRefreshEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15d

    const/16 v3, 0x15

    goto/16 :goto_15e

    :sswitch_77
    const-string/jumbo v3, "backgroundColor"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15d

    const/4 v3, 0x4

    goto/16 :goto_15e

    :sswitch_83
    const-string/jumbo v3, "verticalPositionMultiplier"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15d

    const/16 v3, 0x8

    goto/16 :goto_15e

    :sswitch_90
    const-string/jumbo v3, "aspectRatio"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15d

    move v3, v2

    goto/16 :goto_15e

    :sswitch_9c
    const-string/jumbo v3, "isTranslucentLetterboxingEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15d

    const/16 v3, 0x12

    goto/16 :goto_15e

    :sswitch_a9
    const-string/jumbo v3, "isVerticalReachabilityEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15d

    const/16 v3, 0xa

    goto/16 :goto_15e

    :sswitch_b6
    const-string/jumbo v3, "persistentPositionForVerticalReachability"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15d

    const/16 v3, 0xe

    goto/16 :goto_15e

    :sswitch_c3
    const-string/jumbo v3, "cornerRadius"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15d

    const/4 v3, 0x2

    goto/16 :goto_15e

    :sswitch_cf
    const-string/jumbo v3, "isCameraCompatFreeformWindowingTreatmentEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15d

    const/16 v3, 0x18

    goto/16 :goto_15e

    :sswitch_dc
    const-string/jumbo v3, "defaultPositionForVerticalReachability"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15d

    const/16 v3, 0xc

    goto/16 :goto_15e

    :sswitch_e9
    const-string/jumbo v3, "wallpaperBlurRadius"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15d

    const/4 v3, 0x5

    goto/16 :goto_15e

    :sswitch_f5
    const-string/jumbo v3, "cameraCompatAspectRatio"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15d

    const/16 v3, 0x17

    goto :goto_15e

    :sswitch_101
    const-string/jumbo v3, "isHorizontalReachabilityEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15d

    const/16 v3, 0x9

    goto :goto_15e

    :sswitch_10d
    const-string/jumbo v3, "horizontalPositionMultiplier"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15d

    const/4 v3, 0x7

    goto :goto_15e

    :sswitch_118
    const-string/jumbo v3, "minAspectRatioForUnresizable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15d

    move v3, v4

    goto :goto_15e

    :sswitch_123
    const-string/jumbo v3, "persistentPositionForHorizontalReachability"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15d

    const/16 v3, 0xd

    goto :goto_15e

    :sswitch_12f
    const-string/jumbo v3, "isEducationEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15d

    const/16 v3, 0xf

    goto :goto_15e

    :sswitch_13b
    const-string/jumbo v3, "defaultPositionForHorizontalReachability"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15d

    const/16 v3, 0xb

    goto :goto_15e

    :sswitch_147
    const-string v3, "IsDisplayAspectRatioEnabledForFixedOrientationLetterbox"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15d

    const/16 v3, 0x11

    goto :goto_15e

    :sswitch_152
    const-string/jumbo v3, "wallpaperDarkScrimAlpha"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15d

    const/4 v3, 0x6

    goto :goto_15e

    :cond_15d
    :goto_15d
    move v3, v5

    :goto_15e
    packed-switch v3, :pswitch_data_360

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unrecognized letterbox style option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_17a
    .catchall {:try_start_11 .. :try_end_17a} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    :pswitch_17e  #0x18
    :try_start_17e
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iput-boolean v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatFreeformWindowingTreatmentEnabled:Z

    goto/16 :goto_11

    :pswitch_184  #0x17
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105013a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mCameraCompatAspectRatio:F

    goto/16 :goto_11

    :pswitch_197  #0x16
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iput-boolean v4, v1, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatRefreshCycleThroughStopEnabled:Z

    goto/16 :goto_11

    :pswitch_19d  #0x15
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iput-boolean v4, v1, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatTreatmentRefreshEnabled:Z

    goto/16 :goto_11

    :pswitch_1a3  #0x14
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iput-boolean v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mUserAppAspectRatioFullscreenOverrideEnabled:Z

    goto/16 :goto_11

    :pswitch_1a9  #0x13
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iput-boolean v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mUserAppAspectRatioSettingsOverrideEnabled:Z

    goto/16 :goto_11

    :pswitch_1af  #0x12
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iput-boolean v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mTranslucentLetterboxingOverrideEnabled:Z

    goto/16 :goto_11

    :pswitch_1b5  #0x11
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

    goto/16 :goto_11

    :pswitch_1c8  #0x10
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

    goto/16 :goto_11

    :pswitch_1db  #0xf
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mIsEducationEnabled:Z

    goto/16 :goto_11

    :pswitch_1ee  #0xe
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v3, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v3

    iget-object v5, v1, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    invoke-virtual {v5, v3, v2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForVerticalReachability(IZ)V

    iget-object v1, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v1

    invoke-virtual {v5, v1, v4}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForVerticalReachability(IZ)V

    goto/16 :goto_11

    :pswitch_206  #0xd
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v3, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v3

    iget-object v5, v1, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    invoke-virtual {v5, v3, v2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForHorizontalReachability(IZ)V

    iget-object v1, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v1

    invoke-virtual {v5, v1, v4}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForHorizontalReachability(IZ)V

    goto/16 :goto_11

    :pswitch_21e  #0xc
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v3, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForVerticalReachability:I

    goto/16 :goto_11

    :pswitch_22a  #0xb
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v3, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForHorizontalReachability:I

    goto/16 :goto_11

    :pswitch_236  #0xa
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mIsVerticalReachabilityEnabled:Z

    goto/16 :goto_11

    :pswitch_249  #0x9
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mIsHorizontalReachabilityEnabled:Z

    goto/16 :goto_11

    :pswitch_25c  #0x8
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105010c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxVerticalPositionMultiplier:F

    goto/16 :goto_11

    :pswitch_26f  #0x7
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050108

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    goto/16 :goto_11

    :pswitch_282  #0x6
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050104

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    goto/16 :goto_11

    :pswitch_295  #0x5
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050105

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperBlurRadiusPx:I

    goto/16 :goto_11

    :pswitch_2a8  #0x4
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

    iput-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

    goto/16 :goto_11

    :pswitch_2b1  #0x3
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iput v5, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundTypeOverride:I

    goto/16 :goto_11

    :pswitch_2b7  #0x2
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxActivityCornersRadius:I

    goto/16 :goto_11

    :pswitch_2ca  #0x1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050107

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultMinAspectRatioForUnresizableApps:F

    goto/16 :goto_11

    :pswitch_2dd  #0x0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    goto/16 :goto_11

    :cond_2f0
    monitor-exit v0
    :try_end_2f1
    .catchall {:try_start_17e .. :try_end_2f1} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :goto_2f5
    :try_start_2f5
    monitor-exit v0
    :try_end_2f6
    .catchall {:try_start_2f5 .. :try_end_2f6} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :sswitch_data_2fa
    .sparse-switch
        -0x7b105d10 -> :sswitch_152
        -0x494350ba -> :sswitch_147
        -0x43b458a6 -> :sswitch_13b
        -0x4306f43d -> :sswitch_12f
        -0x3da92e3c -> :sswitch_123
        -0x21cf3116 -> :sswitch_118
        -0x219aa4f2 -> :sswitch_10d
        -0x215b74e4 -> :sswitch_101
        -0x635a2f4 -> :sswitch_f5
        -0x258d085 -> :sswitch_e9
        0xc6f3b6c -> :sswitch_dc
        0x22845b1a -> :sswitch_cf
        0x22c8f747 -> :sswitch_c3
        0x2935f856 -> :sswitch_b6
        0x3092c00a -> :sswitch_a9
        0x34ac3255 -> :sswitch_9c
        0x41194293 -> :sswitch_90
        0x421ec5e0 -> :sswitch_83
        0x4cb7f6d5 -> :sswitch_77
        0x53428397 -> :sswitch_6a
        0x55161188 -> :sswitch_5e
        0x6f68fc6f -> :sswitch_51
        0x6f7a48b6 -> :sswitch_44
        0x70d12177 -> :sswitch_37
        0x7d4b949f -> :sswitch_27
    .end sparse-switch

    :pswitch_data_360
    .packed-switch 0x0
        :pswitch_2dd  #00000000
        :pswitch_2ca  #00000001
        :pswitch_2b7  #00000002
        :pswitch_2b1  #00000003
        :pswitch_2a8  #00000004
        :pswitch_295  #00000005
        :pswitch_282  #00000006
        :pswitch_26f  #00000007
        :pswitch_25c  #00000008
        :pswitch_249  #00000009
        :pswitch_236  #0000000a
        :pswitch_22a  #0000000b
        :pswitch_21e  #0000000c
        :pswitch_206  #0000000d
        :pswitch_1ee  #0000000e
        :pswitch_1db  #0000000f
        :pswitch_1c8  #00000010
        :pswitch_1b5  #00000011
        :pswitch_1af  #00000012
        :pswitch_1a9  #00000013
        :pswitch_1a3  #00000014
        :pswitch_19d  #00000015
        :pswitch_197  #00000016
        :pswitch_184  #00000017
        :pswitch_17e  #00000018
    .end packed-switch
.end method

.method public final runResetMultiWindowConfig()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e017c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0142

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    :try_start_28
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsNonResizableMultiWindow:I

    iput v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRespectsActivityMinWidthHeightMultiWindow:I

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_35
    move-exception p0

    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final runSetAppCompatConfigurationPreset()V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_8} :catch_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_1e

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_10
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->updateAppCompatConfigurationPreset(I)V

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_18
    move-exception p0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catch_1e
    move-exception v0

    goto :goto_22

    :catch_20
    move-exception v0

    goto :goto_38

    :goto_22
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: Preset should be provided as an argument "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :goto_38
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: Preset format "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runSetBlurDisabled(Ljava/io/PrintWriter;)I
    .registers 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Blur supported on device: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Landroid/view/CrossWindowBlurListeners;->CROSS_WINDOW_BLUR_SUPPORTED:Z

    const-string v2, "Blur enabled: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mBlurController:Lcom/android/server/wm/BlurController;

    iget-boolean p0, p0, Lcom/android/server/wm/BlurController;->mBlurEnabled:Z

    invoke-static {v0, p0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    return v3

    :cond_22
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_7a

    :goto_29
    move p1, v1

    goto :goto_58

    :sswitch_2b
    const-string/jumbo p1, "false"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    goto :goto_29

    :cond_35
    const/4 p1, 0x3

    goto :goto_58

    :sswitch_37
    const-string/jumbo p1, "true"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    goto :goto_29

    :cond_41
    const/4 p1, 0x2

    goto :goto_58

    :sswitch_43
    const-string p1, "1"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4c

    goto :goto_29

    :cond_4c
    move p1, v0

    goto :goto_58

    :sswitch_4e
    const-string p1, "0"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_57

    goto :goto_29

    :cond_57
    move p1, v3

    :goto_58
    packed-switch p1, :pswitch_data_8c

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: expected true, 1, false, 0, but got "

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :pswitch_69  #0x0, 0x3
    move v0, v3

    :pswitch_6a  #0x1, 0x2
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "disable_window_blurs"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v3

    nop

    :sswitch_data_7a
    .sparse-switch
        0x30 -> :sswitch_4e
        0x31 -> :sswitch_43
        0x36758e -> :sswitch_37
        0x5cb1923 -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_69  #00000000
        :pswitch_6a  #00000001
        :pswitch_6a  #00000002
        :pswitch_69  #00000003
    .end packed-switch
.end method

.method public final runSetBooleanFlag(Ljava/util/function/Consumer;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: expected true, 1, false, 0, but got empty input."

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_12
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_74

    goto :goto_48

    :sswitch_1b
    const-string/jumbo v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    goto :goto_48

    :cond_25
    const/4 v3, 0x3

    goto :goto_48

    :sswitch_27
    const-string/jumbo v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    goto :goto_48

    :cond_31
    const/4 v3, 0x2

    goto :goto_48

    :sswitch_33
    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    goto :goto_48

    :cond_3c
    move v3, v0

    goto :goto_48

    :sswitch_3e
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    goto :goto_48

    :cond_47
    move v3, v1

    :goto_48
    packed-switch v3, :pswitch_data_86

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: expected true, 1, false, 0, but got "

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :pswitch_59  #0x0, 0x3
    move v0, v1

    :pswitch_5a  #0x1, 0x2
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    :try_start_62
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_62 .. :try_end_6a} :catchall_6e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_6e
    move-exception p1

    :try_start_6f
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    :sswitch_data_74
    .sparse-switch
        0x30 -> :sswitch_3e
        0x31 -> :sswitch_33
        0x36758e -> :sswitch_27
        0x5cb1923 -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_59  #00000000
        :pswitch_5a  #00000001
        :pswitch_5a  #00000002
        :pswitch_59  #00000003
    .end packed-switch
.end method

.method public final runSetCameraCompatAspectRatio()V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_8} :catch_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_1f

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_10
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mCameraCompatAspectRatio:F

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_19
    move-exception p0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catch_1f
    move-exception v0

    goto :goto_23

    :catch_21
    move-exception v0

    goto :goto_39

    :goto_23
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: aspect ratio should be provided as an argument "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :goto_39
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: bad aspect ratio format "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runSetFixedOrientationLetterboxAspectRatio()V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_8} :catch_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_1f

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_10
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_19
    move-exception p0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catch_1f
    move-exception v0

    goto :goto_23

    :catch_21
    move-exception v0

    goto :goto_39

    :goto_23
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: aspect ratio should be provided as an argument "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :goto_39
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: bad aspect ratio format "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runSetIgnoreOrientationRequest(Ljava/io/PrintWriter;)I
    .registers 9

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-d"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1f

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    move v3, v2

    move-object v2, v6

    goto :goto_20

    :cond_1f
    move v3, v4

    :goto_20
    const-string/jumbo v5, "reset"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->resetIgnoreOrientationRequest(I)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4c

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Reset ignoreOrientationRequest to "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for displayId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_4c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo p1, "Unable to reset ignoreOrientationRequest for displayId="

    invoke-static {p0, p1, v3}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    return v1

    :cond_57
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_a8

    :goto_61
    move p1, v1

    goto :goto_90

    :sswitch_63
    const-string/jumbo p1, "false"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6d

    goto :goto_61

    :cond_6d
    const/4 p1, 0x3

    goto :goto_90

    :sswitch_6f
    const-string/jumbo p1, "true"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_79

    goto :goto_61

    :cond_79
    const/4 p1, 0x2

    goto :goto_90

    :sswitch_7b
    const-string p1, "1"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_84

    goto :goto_61

    :cond_84
    move p1, v0

    goto :goto_90

    :sswitch_86
    const-string p1, "0"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8f

    goto :goto_61

    :cond_8f
    move p1, v4

    :goto_90
    packed-switch p1, :pswitch_data_ba

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: expecting true, 1, false, 0, reset, but we get "

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :pswitch_a1  #0x0, 0x3
    move v0, v4

    :pswitch_a2  #0x1, 0x2
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInterface:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v3, v0}, Lcom/android/server/wm/WindowManagerService;->setIgnoreOrientationRequest(IZ)V

    return v4

    :sswitch_data_a8
    .sparse-switch
        0x30 -> :sswitch_86
        0x31 -> :sswitch_7b
        0x36758e -> :sswitch_6f
        0x5cb1923 -> :sswitch_63
    .end sparse-switch

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_a1  #00000000
        :pswitch_a2  #00000001
        :pswitch_a2  #00000002
        :pswitch_a1  #00000003
    .end packed-switch
.end method

.method public final runSetLetterboxActivityCornersRadius()V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_8} :catch_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_27

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_10
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iput v0, v2, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxActivityCornersRadius:I

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->updateAppCompatConfigurationPreset(I)V

    :cond_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_21
    move-exception p0

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catch_27
    move-exception v0

    goto :goto_2b

    :catch_29
    move-exception v0

    goto :goto_41

    :goto_2b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: corners radius should be provided as an argument "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :goto_41
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: bad corners radius format "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runSetLetterboxBackgroundColor()V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_2b

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_14
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iput-object v0, v2, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->updateAppCompatConfigurationPreset(I)V

    :cond_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_25
    move-exception p0

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catch_2b
    move-exception v0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: color in #RRGGBB format should be provided as an argument "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runSetLetterboxBackgroundType()V
    .registers 7

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    sparse-switch v1, :sswitch_data_8a

    goto :goto_3e

    :sswitch_10
    const-string/jumbo v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    move v0, v4

    goto :goto_3f

    :catch_1b
    move-exception v0

    goto :goto_74

    :sswitch_1d
    const-string/jumbo v1, "solid_color"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    move v0, v5

    goto :goto_3f

    :sswitch_28
    const-string/jumbo v1, "app_color_background"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    move v0, v3

    goto :goto_3f

    :sswitch_33
    const-string/jumbo v1, "app_color_background_floating"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    move v0, v2

    goto :goto_3f

    :cond_3e
    :goto_3e
    const/4 v0, -0x1

    :goto_3f
    if-eqz v0, :cond_55

    if-eq v0, v3, :cond_53

    if-eq v0, v2, :cond_56

    if-eq v0, v4, :cond_51

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: \'solid_color\', \'app_color_background\' or \'wallpaper\' should be provided as an argument"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_50} :catch_1b

    return-void

    :cond_51
    move v2, v4

    goto :goto_56

    :cond_53
    move v2, v3

    goto :goto_56

    :cond_55
    move v2, v5

    :cond_56
    :goto_56
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_5e
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iput v2, v1, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundTypeOverride:I

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    if-eqz v1, :cond_69

    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerShellCommand;->updateAppCompatConfigurationPreset(I)V

    :cond_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_5e .. :try_end_6a} :catchall_6e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_6e
    move-exception p0

    :try_start_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :goto_74
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: \'solid_color\', \'app_color_background\' or \'wallpaper\' should be provided as an argument"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :sswitch_data_8a
    .sparse-switch
        -0x655bff83 -> :sswitch_33
        -0xdc7a218 -> :sswitch_28
        0x48814ccf -> :sswitch_1d
        0x57e60e02 -> :sswitch_10
    .end sparse-switch
.end method

.method public final runSetLetterboxBackgroundWallpaperBlurRadius()V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_8} :catch_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_3a

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    int-to-float v0, v0

    :try_start_11
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iput v0, v2, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperBlurRadiusPx:I

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    if-eqz v0, :cond_2f

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->updateAppCompatConfigurationPreset(I)V

    :cond_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_11 .. :try_end_30} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_34
    move-exception p0

    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catch_3a
    move-exception v0

    goto :goto_3e

    :catch_3c
    move-exception v0

    goto :goto_54

    :goto_3e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: blur radius should be provided as an argument "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :goto_54
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: blur radius format "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runSetLetterboxBackgroundWallpaperDarkScrimAlpha()V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_8} :catch_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_27

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_10
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iput v0, v2, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerShellCommand;->updateAppCompatConfigurationPreset(I)V

    :cond_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_21
    move-exception p0

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catch_27
    move-exception v0

    goto :goto_2b

    :catch_29
    move-exception v0

    goto :goto_41

    :goto_2b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: alpha should be provided as an argument "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :goto_41
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: bad alpha format "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runSetLetterboxDefaultPositionForHorizontalReachability()V
    .registers 7

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x514d33ab

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v1, v2, :cond_33

    const v2, 0x32a007

    if-eq v1, v2, :cond_28

    const v2, 0x677c21c

    if-eq v1, v2, :cond_1b

    goto :goto_3e

    :cond_1b
    const-string/jumbo v1, "right"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    move v0, v5

    goto :goto_3f

    :catch_26
    move-exception v0

    goto :goto_69

    :cond_28
    const-string/jumbo v1, "left"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    move v0, v4

    goto :goto_3f

    :cond_33
    const-string/jumbo v1, "center"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    move v0, v3

    goto :goto_3f

    :cond_3e
    :goto_3e
    const/4 v0, -0x1

    :goto_3f
    if-eqz v0, :cond_51

    if-eq v0, v3, :cond_52

    if-eq v0, v5, :cond_4f

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: \'left\', \'center\' or \'right\' are expected as an argument"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4e} :catch_26

    return-void

    :cond_4f
    move v3, v5

    goto :goto_52

    :cond_51
    move v3, v4

    :cond_52
    :goto_52
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_5a
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iput v3, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForHorizontalReachability:I

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_63

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_63
    move-exception p0

    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :goto_69
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: \'left\', \'center\' or \'right\' are expected as an argument"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runSetLetterboxDefaultPositionForVerticalReachability()V
    .registers 7

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x527265d5

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v2, :cond_33

    const v2, -0x514d33ab

    if-eq v1, v2, :cond_28

    const v2, 0x1c155

    if-eq v1, v2, :cond_1b

    goto :goto_3e

    :cond_1b
    const-string/jumbo v1, "top"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    move v0, v5

    goto :goto_3f

    :catch_26
    move-exception v0

    goto :goto_69

    :cond_28
    const-string/jumbo v1, "center"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    move v0, v4

    goto :goto_3f

    :cond_33
    const-string/jumbo v1, "bottom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    move v0, v3

    goto :goto_3f

    :cond_3e
    :goto_3e
    const/4 v0, -0x1

    :goto_3f
    if-eqz v0, :cond_51

    if-eq v0, v4, :cond_4f

    if-eq v0, v3, :cond_52

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: \'top\', \'center\' or \'bottom\' are expected as an argument"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4e} :catch_26

    return-void

    :cond_4f
    move v3, v4

    goto :goto_52

    :cond_51
    move v3, v5

    :cond_52
    :goto_52
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_5a
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iput v3, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForVerticalReachability:I

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_63

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_63
    move-exception p0

    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :goto_69
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: \'top\', \'center\' or \'bottom\' are expected as an argument"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runSetLetterboxStyle()I
    .registers 17

    move-object/from16 v1, p0

    const/16 v2, 0xb

    const/16 v3, 0xa

    const/16 v4, 0x9

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, -0x1

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v15, "Error: No arguments provided."

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_20
    :goto_20
    invoke-virtual {v1}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_44b

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_44c

    :goto_34
    move v15, v11

    goto/16 :goto_1a2

    :sswitch_37
    const-string v15, "--isAutomaticReachabilityInBookModeEnabled"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_40

    goto :goto_34

    :cond_40
    const/16 v15, 0x1b

    goto/16 :goto_1a2

    :sswitch_44
    const-string v15, "--isUserAppAspectRatioSettingsEnabled"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4d

    goto :goto_34

    :cond_4d
    const/16 v15, 0x1a

    goto/16 :goto_1a2

    :sswitch_51
    const-string v15, "--horizontalPositionMultiplier"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5a

    goto :goto_34

    :cond_5a
    const/16 v15, 0x19

    goto/16 :goto_1a2

    :sswitch_5e
    const-string v15, "--minAspectRatioForUnresizable"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_67

    goto :goto_34

    :cond_67
    const/16 v15, 0x18

    goto/16 :goto_1a2

    :sswitch_6b
    const-string v15, "--backgroundColorResource"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_74

    goto :goto_34

    :cond_74
    const/16 v15, 0x17

    goto/16 :goto_1a2

    :sswitch_78
    const-string v15, "--isCameraCompatRefreshCycleThroughStopEnabled"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_81

    goto :goto_34

    :cond_81
    const/16 v15, 0x16

    goto/16 :goto_1a2

    :sswitch_85
    const-string v15, "--isCameraCompatFreeformWindowingTreatmentEnabled"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8e

    goto :goto_34

    :cond_8e
    const/16 v15, 0x15

    goto/16 :goto_1a2

    :sswitch_92
    const-string v15, "--persistentPositionForHorizontalReachability"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9b

    goto :goto_34

    :cond_9b
    const/16 v15, 0x14

    goto/16 :goto_1a2

    :sswitch_9f
    const-string v15, "--backgroundColor"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a8

    goto :goto_34

    :cond_a8
    const/16 v15, 0x13

    goto/16 :goto_1a2

    :sswitch_ac
    const-string v15, "--isTranslucentLetterboxingEnabled"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b6

    goto/16 :goto_34

    :cond_b6
    const/16 v15, 0x12

    goto/16 :goto_1a2

    :sswitch_ba
    const-string v15, "--wallpaperDarkScrimAlpha"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c4

    goto/16 :goto_34

    :cond_c4
    const/16 v15, 0x11

    goto/16 :goto_1a2

    :sswitch_c8
    const-string v15, "--isVerticalReachabilityEnabled"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d2

    goto/16 :goto_34

    :cond_d2
    const/16 v15, 0x10

    goto/16 :goto_1a2

    :sswitch_d6
    const-string v15, "--isHorizontalReachabilityEnabled"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_e0

    goto/16 :goto_34

    :cond_e0
    const/16 v15, 0xf

    goto/16 :goto_1a2

    :sswitch_e4
    const-string v15, "--isUserAppAspectRatioFullscreenEnabled"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_ee

    goto/16 :goto_34

    :cond_ee
    const/16 v15, 0xe

    goto/16 :goto_1a2

    :sswitch_f2
    const-string v15, "--wallpaperBlurRadius"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_fc

    goto/16 :goto_34

    :cond_fc
    const/16 v15, 0xd

    goto/16 :goto_1a2

    :sswitch_100
    const-string v15, "--isSplitScreenAspectRatioForUnresizableAppsEnabled"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10a

    goto/16 :goto_34

    :cond_10a
    const/16 v15, 0xc

    goto/16 :goto_1a2

    :sswitch_10e
    const-string v15, "--backgroundType"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_118

    goto/16 :goto_34

    :cond_118
    move v15, v2

    goto/16 :goto_1a2

    :sswitch_11b
    const-string v15, "--cornerRadius"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_125

    goto/16 :goto_34

    :cond_125
    move v15, v3

    goto/16 :goto_1a2

    :sswitch_128
    const-string v15, "--persistentPositionForVerticalReachability"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_132

    goto/16 :goto_34

    :cond_132
    move v15, v4

    goto/16 :goto_1a2

    :sswitch_135
    const-string v15, "--defaultPositionForHorizontalReachability"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_13f

    goto/16 :goto_34

    :cond_13f
    const/16 v15, 0x8

    goto/16 :goto_1a2

    :sswitch_143
    const-string v15, "--isCameraCompatRefreshEnabled"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_14d

    goto/16 :goto_34

    :cond_14d
    move v15, v6

    goto :goto_1a2

    :sswitch_14f
    const-string v15, "--isDisplayAspectRatioEnabledForFixedOrientationLetterbox"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_159

    goto/16 :goto_34

    :cond_159
    move v15, v7

    goto :goto_1a2

    :sswitch_15b
    const-string v15, "--defaultPositionForVerticalReachability"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_165

    goto/16 :goto_34

    :cond_165
    move v15, v8

    goto :goto_1a2

    :sswitch_167
    const-string v15, "--verticalPositionMultiplier"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_171

    goto/16 :goto_34

    :cond_171
    move v15, v9

    goto :goto_1a2

    :sswitch_173
    const-string v15, "--isEducationEnabled"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_17d

    goto/16 :goto_34

    :cond_17d
    move v15, v10

    goto :goto_1a2

    :sswitch_17f
    const-string v15, "--appCompatConfigurationPreset"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_189

    goto/16 :goto_34

    :cond_189
    move v15, v12

    goto :goto_1a2

    :sswitch_18b
    const-string v15, "--aspectRatio"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_195

    goto/16 :goto_34

    :cond_195
    move v15, v13

    goto :goto_1a2

    :sswitch_197
    const-string v15, "--cameraCompatAspectRatio"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1a1

    goto/16 :goto_34

    :cond_1a1
    move v15, v14

    :goto_1a2
    packed-switch v15, :pswitch_data_4be

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: Unrecognized letterbox style option: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v11

    :pswitch_1b3  #0x1b
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v15, v0, v6}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatConfiguration;I)V

    invoke-virtual {v1, v15}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/util/function/Consumer;)V

    :goto_1c0
    const/16 v6, 0x8

    goto/16 :goto_447

    :pswitch_1c4  #0x1a
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v15, v0, v13}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatConfiguration;I)V

    invoke-virtual {v1, v15}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/util/function/Consumer;)V

    goto :goto_1c0

    :pswitch_1d2  #0x19
    const-string v15, "Error: invalid multiplier value "

    :try_start_1d4
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_1dc
    .catch Ljava/lang/NumberFormatException; {:try_start_1d4 .. :try_end_1dc} :catch_218
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d4 .. :try_end_1dc} :catch_216

    iget-object v6, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v6

    :try_start_1e4
    iget-object v11, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v5, "mLetterboxHorizontalPositionMultiplier"

    invoke-static {v0, v5}, Lcom/android/server/wm/AppCompatConfiguration;->assertValidMultiplier(FLjava/lang/String;)V

    iput v0, v11, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxHorizontalPositionMultiplier:F
    :try_end_1f1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e4 .. :try_end_1f1} :catch_1f8
    .catchall {:try_start_1e4 .. :try_end_1f1} :catchall_1f6

    :try_start_1f1
    monitor-exit v6
    :try_end_1f2
    .catchall {:try_start_1f1 .. :try_end_1f2} :catchall_1f6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_1c0

    :catchall_1f6
    move-exception v0

    goto :goto_211

    :catch_1f8
    move-exception v0

    :try_start_1f9
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v6
    :try_end_20d
    .catchall {:try_start_1f9 .. :try_end_20d} :catchall_1f6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_1c0

    :goto_211
    :try_start_211
    monitor-exit v6
    :try_end_212
    .catchall {:try_start_211 .. :try_end_212} :catchall_1f6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catch_216
    move-exception v0

    goto :goto_21a

    :catch_218
    move-exception v0

    goto :goto_230

    :goto_21a
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "Error: multiplier should be provided as an argument "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1c0

    :goto_230
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "Error: bad multiplier format "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1c0

    :pswitch_247  #0x18
    :try_start_247
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_24f
    .catch Ljava/lang/NumberFormatException; {:try_start_247 .. :try_end_24f} :catch_269
    .catch Ljava/lang/IllegalArgumentException; {:try_start_247 .. :try_end_24f} :catch_267

    iget-object v5, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v5

    :try_start_257
    iget-object v6, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iput v0, v6, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultMinAspectRatioForUnresizableApps:F

    monitor-exit v5
    :try_end_25c
    .catchall {:try_start_257 .. :try_end_25c} :catchall_261

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_1c0

    :catchall_261
    move-exception v0

    :try_start_262
    monitor-exit v5
    :try_end_263
    .catchall {:try_start_262 .. :try_end_263} :catchall_261

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catch_267
    move-exception v0

    goto :goto_26b

    :catch_269
    move-exception v0

    goto :goto_282

    :goto_26b
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "Error: aspect ratio should be provided as an argument "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1c0

    :goto_282
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "Error: bad aspect ratio format "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1c0

    :pswitch_299  #0x17
    :try_start_299
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "color"

    const-string/jumbo v11, "com.android.internal"

    invoke-virtual {v5, v0, v6, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_2af
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_299 .. :try_end_2af} :catch_2d2

    iget-object v5, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v5

    :try_start_2b7
    iget-object v6, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    if-eqz v0, :cond_2c6

    invoke-virtual {v1, v14}, Lcom/android/server/wm/WindowManagerShellCommand;->updateAppCompatConfigurationPreset(I)V

    :cond_2c6
    monitor-exit v5
    :try_end_2c7
    .catchall {:try_start_2b7 .. :try_end_2c7} :catchall_2cc

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_1c0

    :catchall_2cc
    move-exception v0

    :try_start_2cd
    monitor-exit v5
    :try_end_2ce
    .catchall {:try_start_2cd .. :try_end_2ce} :catchall_2cc

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catch_2d2
    move-exception v0

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "Error: color in \'@android:color/resource_name\' format should be provided as an argument "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1c0

    :pswitch_2ea  #0x16
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, v9}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatConfiguration;I)V

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/util/function/Consumer;)V

    goto/16 :goto_1c0

    :pswitch_2f9  #0x15
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, v8}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatConfiguration;I)V

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/util/function/Consumer;)V

    goto/16 :goto_1c0

    :pswitch_308  #0x14
    :try_start_308
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x514d33ab

    if-eq v5, v6, :cond_338

    const v6, 0x32a007

    if-eq v5, v6, :cond_32d

    const v6, 0x677c21c

    if-eq v5, v6, :cond_320

    goto :goto_343

    :cond_320
    const-string/jumbo v5, "right"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_343

    move v0, v12

    goto :goto_344

    :catch_32b
    move-exception v0

    goto :goto_375

    :cond_32d
    const-string/jumbo v5, "left"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_343

    move v0, v14

    goto :goto_344

    :cond_338
    const-string/jumbo v5, "center"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_343

    move v0, v13

    goto :goto_344

    :cond_343
    :goto_343
    const/4 v0, -0x1

    :goto_344
    if-eqz v0, :cond_359

    if-eq v0, v13, :cond_357

    if-eq v0, v12, :cond_355

    invoke-virtual {v1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v5, "Error: \'left\', \'center\' or \'right\' are expected as an argument"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_353
    .catch Ljava/lang/IllegalArgumentException; {:try_start_308 .. :try_end_353} :catch_32b

    goto/16 :goto_1c0

    :cond_355
    move v0, v12

    goto :goto_35a

    :cond_357
    move v0, v13

    goto :goto_35a

    :cond_359
    move v0, v14

    :goto_35a
    iget-object v5, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v5

    :try_start_362
    iget-object v6, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v6, v6, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    invoke-virtual {v6, v0, v14}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForHorizontalReachability(IZ)V

    monitor-exit v5
    :try_end_36a
    .catchall {:try_start_362 .. :try_end_36a} :catchall_36f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_1c0

    :catchall_36f
    move-exception v0

    :try_start_370
    monitor-exit v5
    :try_end_371
    .catchall {:try_start_370 .. :try_end_371} :catchall_36f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :goto_375
    invoke-virtual {v1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "Error: \'left\', \'center\' or \'right\' are expected as an argument"

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1c0

    :pswitch_38c  #0x13
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetLetterboxBackgroundColor()V

    goto/16 :goto_1c0

    :pswitch_391  #0x12
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, v2}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatConfiguration;I)V

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/util/function/Consumer;)V

    goto/16 :goto_1c0

    :pswitch_3a0  #0x11
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetLetterboxBackgroundWallpaperDarkScrimAlpha()V

    goto/16 :goto_1c0

    :pswitch_3a5  #0x10
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, v7}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatConfiguration;I)V

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/util/function/Consumer;)V

    goto/16 :goto_1c0

    :pswitch_3b4  #0xf
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, v14}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatConfiguration;I)V

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/util/function/Consumer;)V

    goto/16 :goto_1c0

    :pswitch_3c3  #0xe
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, v12}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatConfiguration;I)V

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/util/function/Consumer;)V

    goto/16 :goto_1c0

    :pswitch_3d2  #0xd
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetLetterboxBackgroundWallpaperBlurRadius()V

    goto/16 :goto_1c0

    :pswitch_3d7  #0xc
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, v4}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatConfiguration;I)V

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/util/function/Consumer;)V

    goto/16 :goto_1c0

    :pswitch_3e6  #0xb
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetLetterboxBackgroundType()V

    goto/16 :goto_1c0

    :pswitch_3eb  #0xa
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetLetterboxActivityCornersRadius()V

    goto/16 :goto_1c0

    :pswitch_3f0  #0x9
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetPersistentLetterboxPositionForVerticalReachability()V

    goto/16 :goto_1c0

    :pswitch_3f5  #0x8
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetLetterboxDefaultPositionForHorizontalReachability()V

    goto/16 :goto_1c0

    :pswitch_3fa  #0x7
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, v10}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatConfiguration;I)V

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/util/function/Consumer;)V

    goto/16 :goto_1c0

    :pswitch_409  #0x6
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, v3}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatConfiguration;I)V

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/util/function/Consumer;)V

    goto/16 :goto_1c0

    :pswitch_418  #0x5
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetLetterboxDefaultPositionForVerticalReachability()V

    goto/16 :goto_1c0

    :pswitch_41d  #0x4
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetLetterboxVerticalPositionMultiplier()V

    goto/16 :goto_1c0

    :pswitch_422  #0x3
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;

    const/16 v6, 0x8

    invoke-direct {v5, v0, v6}, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatConfiguration;I)V

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetBooleanFlag(Ljava/util/function/Consumer;)V

    goto :goto_447

    :pswitch_432  #0x2
    const/16 v6, 0x8

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    if-eqz v0, :cond_447

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetAppCompatConfigurationPreset()V

    goto :goto_447

    :pswitch_43c  #0x1
    const/16 v6, 0x8

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetFixedOrientationLetterboxAspectRatio()V

    goto :goto_447

    :pswitch_442  #0x0
    const/16 v6, 0x8

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerShellCommand;->runSetCameraCompatAspectRatio()V

    :cond_447
    :goto_447
    const/4 v6, 0x7

    const/4 v11, -0x1

    goto/16 :goto_20

    :cond_44b
    return v14

    :sswitch_data_44c
    .sparse-switch
        -0x7d71fc94 -> :sswitch_197
        -0x77a4870d -> :sswitch_18b
        -0x6fe908ee -> :sswitch_17f
        -0x64a1169d -> :sswitch_173
        -0x55e2fc80 -> :sswitch_167
        -0x4e21f6f4 -> :sswitch_15b
        -0x4d26823a -> :sswitch_14f
        -0x4b5826c9 -> :sswitch_143
        -0x3ec27306 -> :sswitch_135
        -0x3d7f394a -> :sswitch_128
        -0x3c327319 -> :sswitch_11b
        -0x38b440d8 -> :sswitch_10e
        -0x36509531 -> :sswitch_100
        -0x1402fa25 -> :sswitch_f2
        -0x12036d01 -> :sswitch_e4
        -0x11f42e84 -> :sswitch_d6
        -0x427e196 -> :sswitch_c8
        0xdb34950 -> :sswitch_ba
        0x122db7f5 -> :sswitch_ac
        0x2137fd35 -> :sswitch_9f
        0x34278824 -> :sswitch_92
        0x3652e17a -> :sswitch_85
        0x37c05e56 -> :sswitch_78
        0x3d9c2063 -> :sswitch_6b
        0x3f96248a -> :sswitch_5e
        0x3fcab0ae -> :sswitch_51
        0x546e37d7 -> :sswitch_44
        0x67ad5ef8 -> :sswitch_37
    .end sparse-switch

    :pswitch_data_4be
    .packed-switch 0x0
        :pswitch_442  #00000000
        :pswitch_43c  #00000001
        :pswitch_432  #00000002
        :pswitch_422  #00000003
        :pswitch_41d  #00000004
        :pswitch_418  #00000005
        :pswitch_409  #00000006
        :pswitch_3fa  #00000007
        :pswitch_3f5  #00000008
        :pswitch_3f0  #00000009
        :pswitch_3eb  #0000000a
        :pswitch_3e6  #0000000b
        :pswitch_3d7  #0000000c
        :pswitch_3d2  #0000000d
        :pswitch_3c3  #0000000e
        :pswitch_3b4  #0000000f
        :pswitch_3a5  #00000010
        :pswitch_3a0  #00000011
        :pswitch_391  #00000012
        :pswitch_38c  #00000013
        :pswitch_308  #00000014
        :pswitch_2f9  #00000015
        :pswitch_2ea  #00000016
        :pswitch_299  #00000017
        :pswitch_247  #00000018
        :pswitch_1d2  #00000019
        :pswitch_1c4  #0000001a
        :pswitch_1b3  #0000001b
    .end packed-switch
.end method

.method public final runSetLetterboxVerticalPositionMultiplier()V
    .registers 6

    const-string v0, "Error: invalid multiplier value "

    :try_start_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_a} :catch_46
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_a} :catch_44

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    :try_start_12
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "mLetterboxVerticalPositionMultiplier"

    invoke-static {v1, v4}, Lcom/android/server/wm/AppCompatConfiguration;->assertValidMultiplier(FLjava/lang/String;)V

    iput v1, v3, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxVerticalPositionMultiplier:F
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_1f} :catch_26
    .catchall {:try_start_12 .. :try_end_1f} :catchall_24

    :try_start_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_24
    move-exception p0

    goto :goto_3f

    :catch_26
    move-exception v1

    :try_start_27
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_27 .. :try_end_3b} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_3f
    :try_start_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catch_44
    move-exception v0

    goto :goto_48

    :catch_46
    move-exception v0

    goto :goto_5e

    :goto_48
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: multiplier should be provided as an argument "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :goto_5e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: bad multiplier format "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runSetMultiWindowConfig()I
    .registers 6

    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: No arguments provided."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_f
    const/4 v0, 0x0

    move v1, v0

    :goto_11
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_c9

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "--supportsNonResizable"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_84

    const-string v4, "--respectsActivityMinWidthHeight"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: Unrecognized multi window option: "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_3d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    const-string v4, "-1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_63

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_63

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_63

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v4, "Error: a config value of [-1, 0, 1] must be provided as an argument for respectsActivityMinWidthHeightMultiWindow"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7c

    :cond_63
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4

    :try_start_71
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput v2, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRespectsActivityMinWidthHeightMultiWindow:I

    monitor-exit v4
    :try_end_78
    .catchall {:try_start_71 .. :try_end_78} :catchall_7e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :goto_7b
    move v3, v0

    :goto_7c
    add-int/2addr v1, v3

    goto :goto_11

    :catchall_7e
    move-exception p0

    :try_start_7f
    monitor-exit v4
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_84
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    const-string v4, "-1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_aa

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_aa

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_aa

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v4, "Error: a config value of [-1, 0, 1] must be provided as an argument for supportsNonResizableMultiWindow"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7c

    :cond_aa
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4

    :try_start_b8
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput v2, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsNonResizableMultiWindow:I

    monitor-exit v4
    :try_end_bf
    .catchall {:try_start_b8 .. :try_end_bf} :catchall_c3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_7b

    :catchall_c3
    move-exception p0

    :try_start_c4
    monitor-exit v4
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_c9
    if-nez v1, :cond_cc

    return v0

    :cond_cc
    return v3
.end method

.method public final runSetPersistentLetterboxPositionForVerticalReachability()V
    .registers 7

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x527265d5

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v2, :cond_33

    const v2, -0x514d33ab

    if-eq v1, v2, :cond_28

    const v2, 0x1c155

    if-eq v1, v2, :cond_1b

    goto :goto_3e

    :cond_1b
    const-string/jumbo v1, "top"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    move v0, v5

    goto :goto_3f

    :catch_26
    move-exception v0

    goto :goto_6c

    :cond_28
    const-string/jumbo v1, "center"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    move v0, v4

    goto :goto_3f

    :cond_33
    const-string/jumbo v1, "bottom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    move v0, v3

    goto :goto_3f

    :cond_3e
    :goto_3e
    const/4 v0, -0x1

    :goto_3f
    if-eqz v0, :cond_51

    if-eq v0, v4, :cond_4f

    if-eq v0, v3, :cond_52

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: \'top\', \'center\' or \'bottom\' are expected as an argument"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4e} :catch_26

    return-void

    :cond_4f
    move v3, v4

    goto :goto_52

    :cond_51
    move v3, v5

    :cond_52
    :goto_52
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_5a
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    invoke-virtual {p0, v3, v5}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForVerticalReachability(IZ)V

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_66

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_66
    move-exception p0

    :try_start_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :goto_6c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: \'top\', \'center\' or \'bottom\' are expected as an argument"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final runWmShellCommand()V
    .registers 4

    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekRemainingArgs()[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wmshell-passthrough"

    invoke-static {v1}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerService$2;

    if-nez v2, :cond_24

    const-class v2, Lcom/android/server/statusbar/StatusBarManagerService$2;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerService$2;

    iput-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerService$2;

    :cond_24
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerService$2;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/statusbar/StatusBarManagerService;->passThroughShellCommand([Ljava/lang/String;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public final updateAppCompatConfigurationPreset(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateAppCompatConfigurationPreset(I)V

    return-void
.end method
