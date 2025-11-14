.class public final Lcom/android/server/pm/UserManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mService:Lcom/android/server/pm/UserManagerService;

.field public final mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserSystemPackageInstaller;Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    iput-object p2, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    iput-object p3, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p4, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 9

    const-string v0, "--verbose"

    const-string v1, "-v"

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v3, "is-user-visible"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    goto/16 :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :sswitch_1
    const-string/jumbo v3, "set-system-user-mode-emulation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "get-main-user"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_3
    const-string/jumbo v3, "report-system-user-package-whitelist-problems"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :sswitch_4
    const-string/jumbo v3, "is-visible-background-users-on-default-display-supported"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_5
    const-string/jumbo v3, "is-main-user-permanent-admin"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x9

    goto :goto_1

    :sswitch_6
    const-string/jumbo v3, "can-switch-to-headless-system-user"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x8

    goto :goto_1

    :sswitch_7
    const-string/jumbo v3, "list"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_1

    :sswitch_8
    const-string/jumbo v3, "is-headless-system-user-mode"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_9
    const-string/jumbo v3, "is-visible-background-users-supported"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    const-string/jumbo v6, "effective=%b real=%b\n"

    const-string v7, "Invalid option: "

    packed-switch v3, :pswitch_data_0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    return v5

    :pswitch_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    return v5

    :pswitch_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getMainUserId()I

    move-result v0

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "None"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    return v5

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->runIsUserVisible()I

    move-result p0

    return p0

    :pswitch_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    move v3, v5

    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v8, :cond_4

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :try_start_2
    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_3
    move v3, v4

    goto :goto_2

    :cond_4
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersOnDefaultDisplayEnabled()Z

    move-result v0

    if-nez v3, :cond_5

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    return v5

    :cond_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1110201

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v5

    :pswitch_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    move v3, v5

    :goto_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v8, :cond_7

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :try_start_3
    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_6
    move v3, v4

    goto :goto_3

    :cond_7
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    if-nez v3, :cond_8

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    return v5

    :cond_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1110200

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v5

    :pswitch_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    move v3, v5

    :goto_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v8
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v8, :cond_a

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :try_start_4
    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_9
    move v3, v4

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->isHeadlessSystemUserMode()Z

    move-result v0

    if-nez v3, :cond_b

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    return v5

    :cond_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/os/RoSystemProperties;->MULTIUSER_HEADLESS_SYSTEM_USER:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v5

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->runSetSystemUserModeEmulation()I

    move-result p0

    return p0

    :pswitch_8
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->runReportPackageAllowlistProblems()I

    move-result p0

    return p0

    :pswitch_9
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->runList()I

    move-result p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    return p0

    :goto_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "Remote exception: "

    invoke-static {v0, p1, p0}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x653759b8 -> :sswitch_9
        -0x3fcd2c8 -> :sswitch_8
        0x32b09e -> :sswitch_7
        0x144d7a6b -> :sswitch_6
        0x28a0f01f -> :sswitch_5
        0x3a76b28f -> :sswitch_4
        0x40afebbe -> :sswitch_3
        0x56a171a8 -> :sswitch_2
        0x5faf535b -> :sswitch_1
        0x6b6f1033 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 4

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "User manager (user) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Prints this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  list [-v | --verbose] [--all]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Prints all users on the system."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  report-system-user-package-whitelist-problems [-v | --verbose] [--critical-only] [--mode MODE]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Reports all issues on user-type package allowlist XML files. Options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    -v | --verbose: shows extra info, like number of issues"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    --critical-only: show only critical issues, excluding warnings"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    --mode MODE: shows what errors would be if device used mode MODE"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      (where MODE is the allowlist mode integer as defined by config_userTypePackageWhitelistMode)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  set-system-user-mode-emulation [--reboot | --no-restart] <headless | full | default>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Changes whether the system user is headless, full, or default (as defined by OEM)."

    const-string v1, "    WARNING: this command is meant just for development and debugging purposes."

    const-string v2, "             It should NEVER be used on automated tests."

    const-string v3, "    NOTE: by default it restarts the Android runtime, unless called with"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "          --reboot (which does a full reboot) or"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "          --no-restart (which requires a manual restart)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  is-headless-system-user-mode [-v | --verbose]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Checks whether the device uses headless system user mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  is-visible-background-users-on-default-display-supported [-v | --verbose]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Checks whether the device allows users to be start visible on background in the default display."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    It returns the effective mode, even when using emulation"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    (to get the real mode as well, use -v or --verbose)"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v2, "  is-visible-background-users-supported [-v | --verbose]"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Checks whether the device allows users to be start visible on background."

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  is-user-visible [--display DISPLAY_ID] <USER_ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Checks if the given user is visible in the given display."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    If the display option is not set, it uses the user\'s context to check"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    (so it emulates what apps would get from UserManager.isUserVisible())"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  get-main-user "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Displays main user id or message if there is no main user"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final runIsUserVisible()I
    .locals 5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    const-string v1, "--display"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "Invalid option: "

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    const/16 v4, -0x2710

    if-eq v2, v4, :cond_4

    const/4 v4, -0x3

    if-eq v2, v4, :cond_4

    const/4 v4, -0x2

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_4

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    :goto_1
    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/pm/UserVisibilityMediator;->isUserVisible(II)Z

    move-result p0

    goto :goto_2

    :cond_3
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isUserVisible()Z

    move-result p0

    :goto_2
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    return v3

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v1, "invalid value (%d) for --user option\n"

    invoke-virtual {v0, v1, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v3
.end method

.method public final runList()I
    .locals 33

    move-object/from16 v0, p0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :goto_1
    move v8, v1

    goto :goto_2

    :sswitch_0
    const-string v8, "--verbose"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    const/4 v8, 0x2

    goto :goto_2

    :sswitch_1
    const-string v8, "--all"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    move v8, v2

    goto :goto_2

    :sswitch_2
    const-string v8, "-v"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    move v8, v4

    :goto_2
    packed-switch v8, :pswitch_data_0

    const-string v0, "Invalid option: "

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :pswitch_0
    move v5, v2

    goto :goto_0

    :pswitch_1
    move v6, v2

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v7, v0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    xor-int/lit8 v8, v5, 0x1

    xor-int/2addr v5, v2

    invoke-virtual {v7, v8, v4, v5}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, -0x2710

    if-eqz v6, :cond_4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "%d users:\n\n"

    invoke-virtual {v3, v10, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v9

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    goto :goto_3

    :cond_4
    const-string/jumbo v9, "Users:"

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v9, v8

    :goto_3
    move v10, v4

    :goto_4
    if-ge v10, v7, :cond_13

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    iget v12, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v1, v12, v4}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    move-result v12

    const-string v13, ""

    if-eqz v6, :cond_11

    const-class v14, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v14}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v14, :cond_7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    move/from16 v17, v2

    :try_start_0
    invoke-virtual {v14}, Landroid/app/admin/DevicePolicyManagerInternal;->getDeviceOwnerUserId()I

    move-result v2

    move/from16 v18, v4

    iget v4, v11, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, v4, :cond_5

    const-string v2, " (device-owner)"

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_5
    move-object v2, v13

    :goto_5
    invoke-virtual {v14, v4}, Landroid/app/admin/DevicePolicyManagerInternal;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string v4, " (profile-owner)"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :cond_6
    move-object v4, v13

    :goto_6
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v29, v2

    move-object/from16 v30, v4

    goto :goto_8

    :goto_7
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_7
    move/from16 v17, v2

    move/from16 v18, v4

    move-object/from16 v29, v13

    move-object/from16 v30, v29

    :goto_8
    iget v2, v11, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, v9, :cond_8

    move/from16 v4, v17

    goto :goto_9

    :cond_8
    move/from16 v4, v18

    :goto_9
    iget v14, v11, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-eq v14, v2, :cond_9

    if-eq v14, v8, :cond_9

    move/from16 v14, v17

    goto :goto_a

    :cond_9
    move/from16 v14, v18

    :goto_a
    iget-object v15, v0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v15, v2}, Lcom/android/server/pm/UserManagerService;->isUserVisible(I)Z

    move-result v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget v15, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget-object v15, v11, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iget-object v8, v11, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    const-string/jumbo v0, "android.os.usertype."

    invoke-virtual {v8, v0, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    iget v0, v11, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v0}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v23

    if-eqz v14, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, " (parentId="

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v11, Landroid/content/pm/UserInfo;->profileGroupId:I

    const-string v14, ")"

    invoke-static {v8, v0, v14}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v24, v0

    goto :goto_b

    :cond_a
    move-object/from16 v24, v13

    :goto_b
    if-eqz v12, :cond_b

    const-string v0, " (running)"

    move-object/from16 v25, v0

    goto :goto_c

    :cond_b
    move-object/from16 v25, v13

    :goto_c
    iget-boolean v0, v11, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v0, :cond_c

    const-string v0, " (partial)"

    move-object/from16 v26, v0

    goto :goto_d

    :cond_c
    move-object/from16 v26, v13

    :goto_d
    iget-boolean v0, v11, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v0, :cond_d

    const-string v0, " (pre-created)"

    move-object/from16 v27, v0

    goto :goto_e

    :cond_d
    move-object/from16 v27, v13

    :goto_e
    iget-boolean v0, v11, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    if-eqz v0, :cond_e

    const-string v0, " (converted)"

    move-object/from16 v28, v0

    goto :goto_f

    :cond_e
    move-object/from16 v28, v13

    :goto_f
    if-eqz v4, :cond_f

    const-string v0, " (current)"

    move-object/from16 v31, v0

    goto :goto_10

    :cond_f
    move-object/from16 v31, v13

    :goto_10
    if-eqz v2, :cond_10

    const-string v13, " (visible)"

    :cond_10
    move-object/from16 v32, v13

    move-object/from16 v21, v15

    filled-new-array/range {v19 .. v32}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%d: id=%d, name=%s, type=%s, flags=%s%s%s%s%s%s%s%s%s%s\n"

    invoke-virtual {v3, v2, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_11

    :cond_11
    move/from16 v17, v2

    move/from16 v18, v4

    if-eqz v12, :cond_12

    const-string v13, " running"

    :cond_12
    filled-new-array {v11, v13}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "\t%s%s\n"

    invoke-virtual {v3, v2, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_11
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v17

    move/from16 v4, v18

    const/16 v8, -0x2710

    goto/16 :goto_4

    :cond_13
    move/from16 v18, v4

    return v18

    :sswitch_data_0
    .sparse-switch
        0x5e9 -> :sswitch_2
        0x2901001 -> :sswitch_1
        0x6789dfe2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final runReportPackageAllowlistProblems()I
    .locals 9

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, -0x3e8

    move v5, v3

    move v6, v5

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :goto_1
    move v8, v0

    goto :goto_2

    :sswitch_0
    const-string v8, "--verbose"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    const/4 v8, 0x3

    goto :goto_2

    :sswitch_1
    const-string v8, "--mode"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x2

    goto :goto_2

    :sswitch_2
    const-string v8, "-v"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    move v8, v1

    goto :goto_2

    :sswitch_3
    const-string v8, "--critical-only"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    move v8, v3

    :goto_2
    packed-switch v8, :pswitch_data_0

    const-string p0, "Invalid option: "

    invoke-virtual {p0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :pswitch_1
    move v5, v1

    goto :goto_0

    :pswitch_2
    move v6, v1

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "runReportPackageAllowlistProblems(): verbose="

    const-string v1, ", criticalOnly="

    const-string v7, ", mode="

    invoke-static {v0, v5, v1, v6, v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UserManagerServiceShellCommand"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, v2, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    invoke-virtual {p0, v0, v4, v5, v6}, Lcom/android/server/pm/UserSystemPackageInstaller;->dumpPackageWhitelistProblems(Landroid/util/IndentingPrintWriter;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->close()V

    return v3

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x513a2c86 -> :sswitch_3
        0x5e9 -> :sswitch_2
        0x4f776f43 -> :sswitch_1
        0x6789dfe2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final runSetSystemUserModeEmulation()I
    .locals 11

    const-string/jumbo v0, "full"

    const-string/jumbo v1, "headless"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string p0, "Cannot change system user mode when it has a credential"

    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_0
    move v6, v2

    move v7, v4

    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    const-string v9, "--no-restart"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v6, "--reboot"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string p0, "Invalid option: "

    invoke-virtual {p0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_1
    move v6, v4

    goto :goto_0

    :cond_2
    move v7, v2

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_4

    if-nez v7, :cond_4

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "You can use --reboot or --no-restart, but not both"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v9

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :goto_1
    move v10, v3

    goto :goto_2

    :sswitch_0
    const-string/jumbo v10, "default"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_1

    :cond_5
    const/4 v10, 0x2

    goto :goto_2

    :sswitch_1
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    goto :goto_1

    :cond_6
    move v10, v4

    goto :goto_2

    :sswitch_2
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_1

    :cond_7
    move v10, v2

    :goto_2
    packed-switch v10, :pswitch_data_0

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Invalid arg: %s\n"

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v3

    :pswitch_0
    move v4, v9

    goto :goto_3

    :pswitch_1
    xor-int/2addr v4, v9

    :goto_3
    :pswitch_2
    if-nez v4, :cond_9

    if-eqz v9, :cond_8

    move-object v0, v1

    :cond_8
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "No change needed, system user is already %s\n"

    invoke-virtual {v5, v0, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v2

    :cond_9
    const-string/jumbo p0, "Updating system property %s to %s"

    const-string/jumbo v0, "persist.debug.user_mode_emulation"

    filled-new-array {v0, v8}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v3, "UserManagerServiceShellCommand"

    invoke-static {v3, p0, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_a

    const-string/jumbo p0, "Rebooting to finalize the changes"

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "Rebooting to finalize changes"

    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/android/server/pm/UserManagerServiceShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :cond_a
    if-eqz v7, :cond_c

    const-string/jumbo p0, "Shutting PackageManager down"

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0}, Landroid/content/pm/PackageManagerInternal;->shutdown()V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    if-eqz p0, :cond_b

    :try_start_0
    const-string/jumbo v0, "Shutting ActivityManager down"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2710

    invoke-interface {p0, v0}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    const-string v0, "Failed to shut down ActivityManager"

    invoke-static {v0, p0, v3}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_b
    :goto_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "Restarting Android runtime(PID=%d) to finalize changes"

    invoke-static {v3, v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v0, "Restarting Android runtime to finalize changes"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "The restart may trigger a \'Broken pipe\' message; this is to be expected."

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_5

    :cond_c
    const-string/jumbo p0, "System user mode changed - please reboot (or restart Android runtime) to continue"

    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p0, "NOTICE: after restart, some apps might be uninstalled (and their data will be lost)"

    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5
    return v2

    :cond_d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Command only available on root user"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Command not available on user builds"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_6
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x42768087 -> :sswitch_2
        0x30228f -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
