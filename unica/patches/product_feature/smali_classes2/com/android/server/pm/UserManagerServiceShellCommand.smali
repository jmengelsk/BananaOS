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
    .registers 5

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    iput-object p2, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    iput-object p3, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p4, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .registers 11

    const-string v0, "--verbose"

    const-string v1, "-v"

    if-nez p1, :cond_c

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_c
    const/4 v2, -0x1

    :try_start_d
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_1ce

    goto/16 :goto_8c

    :sswitch_18
    const-string/jumbo v3, "is-user-visible"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    const/4 v3, 0x6

    goto/16 :goto_8d

    :catch_24
    move-exception p1

    goto/16 :goto_1c2

    :sswitch_27
    const-string/jumbo v3, "set-system-user-mode-emulation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    const/4 v3, 0x2

    goto :goto_8d

    :sswitch_32
    const-string/jumbo v3, "get-main-user"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    const/4 v3, 0x7

    goto :goto_8d

    :sswitch_3d
    const-string/jumbo v3, "report-system-user-package-whitelist-problems"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    move v3, v4

    goto :goto_8d

    :sswitch_48
    const-string/jumbo v3, "is-visible-background-users-on-default-display-supported"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    const/4 v3, 0x5

    goto :goto_8d

    :sswitch_53
    const-string/jumbo v3, "is-main-user-permanent-admin"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    const/16 v3, 0x9

    goto :goto_8d

    :sswitch_5f
    const-string/jumbo v3, "can-switch-to-headless-system-user"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    const/16 v3, 0x8

    goto :goto_8d

    :sswitch_6b
    const-string/jumbo v3, "list"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    move v3, v5

    goto :goto_8d

    :sswitch_76
    const-string/jumbo v3, "is-headless-system-user-mode"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    const/4 v3, 0x3

    goto :goto_8d

    :sswitch_81
    const-string/jumbo v3, "is-visible-background-users-supported"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_88} :catch_24

    if-eqz v3, :cond_8c

    const/4 v3, 0x4

    goto :goto_8d

    :cond_8c
    :goto_8c
    move v3, v2

    :goto_8d
    const-string/jumbo v6, "effective=%b real=%b\n"

    const-string v7, "Invalid option: "

    packed-switch v3, :pswitch_data_1f8

    :try_start_95
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_9a  #0x9
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

    :pswitch_b2  #0x8
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

    :pswitch_ca  #0x7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getMainUserId()I

    move-result v0

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_df

    const-string/jumbo v0, "None"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_df
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    return v5

    :pswitch_e3  #0x6
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->runIsUserVisible()I

    move-result p0

    return p0

    :pswitch_e8  #0x5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    move v3, v5

    :goto_ed
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v8
    :try_end_f1
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_f1} :catch_24

    if-eqz v8, :cond_109

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_107

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_107

    :try_start_ff
    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_107
    move v3, v4

    goto :goto_ed

    :cond_109
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersOnDefaultDisplayEnabled()Z

    move-result v0

    if-nez v3, :cond_113

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    return v5

    :cond_113
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

    :pswitch_12e  #0x4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    move v3, v5

    :goto_133
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v8
    :try_end_137
    .catch Landroid/os/RemoteException; {:try_start_ff .. :try_end_137} :catch_24

    if-eqz v8, :cond_14f

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14d

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14d

    :try_start_145
    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_14d
    move v3, v4

    goto :goto_133

    :cond_14f
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    if-nez v3, :cond_159

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    return v5

    :cond_159
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

    :pswitch_174  #0x3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    move v3, v5

    :goto_179
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v8
    :try_end_17d
    .catch Landroid/os/RemoteException; {:try_start_145 .. :try_end_17d} :catch_24

    if-eqz v8, :cond_195

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_193

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_193

    :try_start_18b
    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_193
    move v3, v4

    goto :goto_179

    :cond_195
    iget-object v0, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->isHeadlessSystemUserMode()Z

    move-result v0

    if-nez v3, :cond_1a1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    return v5

    :cond_1a1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/os/RoSystemProperties;->MULTIUSER_HEADLESS_SYSTEM_USER:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v5

    :pswitch_1b3  #0x2
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->runSetSystemUserModeEmulation()I

    move-result p0

    return p0

    :pswitch_1b8  #0x1
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->runReportPackageAllowlistProblems()I

    move-result p0

    return p0

    :pswitch_1bd  #0x0
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerServiceShellCommand;->runList()I

    move-result p0
    :try_end_1c1
    .catch Landroid/os/RemoteException; {:try_start_18b .. :try_end_1c1} :catch_24

    return p0

    :goto_1c2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "Remote exception: "

    invoke-static {v0, p1, p0}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    return v2

    nop

    :sswitch_data_1ce
    .sparse-switch
        -0x653759b8 -> :sswitch_81
        -0x3fcd2c8 -> :sswitch_76
        0x32b09e -> :sswitch_6b
        0x144d7a6b -> :sswitch_5f
        0x28a0f01f -> :sswitch_53
        0x3a76b28f -> :sswitch_48
        0x40afebbe -> :sswitch_3d
        0x56a171a8 -> :sswitch_32
        0x5faf535b -> :sswitch_27
        0x6b6f1033 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_1f8
    .packed-switch 0x0
        :pswitch_1bd  #00000000
        :pswitch_1b8  #00000001
        :pswitch_1b3  #00000002
        :pswitch_174  #00000003
        :pswitch_12e  #00000004
        :pswitch_e8  #00000005
        :pswitch_e3  #00000006
        :pswitch_ca  #00000007
        :pswitch_b2  #00000008
        :pswitch_9a  #00000009
    .end packed-switch
.end method

.method public final onHelp()V
    .registers 5

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
    .registers 6

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2b

    const-string v1, "--display"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string p0, "Invalid option: "

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_1e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    :cond_2b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    const/16 v4, -0x2710

    if-eq v2, v4, :cond_6e

    const/4 v4, -0x3

    if-eq v2, v4, :cond_6e

    const/4 v4, -0x2

    if-eq v2, v4, :cond_40

    if-eq v2, v3, :cond_6e

    goto :goto_44

    :cond_40
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    :goto_44
    const/4 v3, 0x0

    if-eqz v1, :cond_54

    iget-object p0, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mService:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mUserVisibilityMediator:Lcom/android/server/pm/UserVisibilityMediator;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/pm/UserVisibilityMediator;->isUserVisible(II)Z

    move-result p0

    goto :goto_6a

    :cond_54
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

    :goto_6a
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    return v3

    :cond_6e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v1, "invalid value (%d) for --user option\n"

    invoke-virtual {v0, v1, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v3
.end method

.method public final runList()I
    .registers 34

    move-object/from16 v0, p0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_b
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4b

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_17e

    :goto_18
    move v8, v1

    goto :goto_3a

    :sswitch_1a
    const-string v8, "--verbose"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_23

    goto :goto_18

    :cond_23
    const/4 v8, 0x2

    goto :goto_3a

    :sswitch_25
    const-string v8, "--all"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2e

    goto :goto_18

    :cond_2e
    move v8, v2

    goto :goto_3a

    :sswitch_30
    const-string v8, "-v"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_39

    goto :goto_18

    :cond_39
    move v8, v4

    :goto_3a
    packed-switch v8, :pswitch_data_18c

    const-string v0, "Invalid option: "

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :pswitch_47  #0x1
    move v5, v2

    goto :goto_b

    :pswitch_49  #0x0, 0x2
    move v6, v2

    goto :goto_b

    :cond_4b
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

    if-eqz v6, :cond_76

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "%d users:\n\n"

    invoke-virtual {v3, v10, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v9

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    goto :goto_7d

    :cond_76
    const-string/jumbo v9, "Users:"

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v9, v8

    :goto_7d
    move v10, v4

    :goto_7e
    if-ge v10, v7, :cond_17b

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    iget v12, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v1, v12, v4}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    move-result v12

    const-string v13, ""

    if-eqz v6, :cond_15e

    const-class v14, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v14}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v14, :cond_c6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    move/from16 v17, v2

    :try_start_a0
    invoke-virtual {v14}, Landroid/app/admin/DevicePolicyManagerInternal;->getDeviceOwnerUserId()I

    move-result v2

    move/from16 v18, v4

    iget v4, v11, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, v4, :cond_af

    const-string v2, " (device-owner)"

    goto :goto_b0

    :catchall_ad
    move-exception v0

    goto :goto_c2

    :cond_af
    move-object v2, v13

    :goto_b0
    invoke-virtual {v14, v4}, Landroid/app/admin/DevicePolicyManagerInternal;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_b9

    const-string v4, " (profile-owner)"
    :try_end_b8
    .catchall {:try_start_a0 .. :try_end_b8} :catchall_ad

    goto :goto_ba

    :cond_b9
    move-object v4, v13

    :goto_ba
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v29, v2

    move-object/from16 v30, v4

    goto :goto_ce

    :goto_c2
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_c6
    move/from16 v17, v2

    move/from16 v18, v4

    move-object/from16 v29, v13

    move-object/from16 v30, v29

    :goto_ce
    iget v2, v11, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, v9, :cond_d5

    move/from16 v4, v17

    goto :goto_d7

    :cond_d5
    move/from16 v4, v18

    :goto_d7
    iget v14, v11, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-eq v14, v2, :cond_e0

    if-eq v14, v8, :cond_e0

    move/from16 v14, v17

    goto :goto_e2

    :cond_e0
    move/from16 v14, v18

    :goto_e2
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

    if-eqz v14, :cond_117

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, " (parentId="

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v11, Landroid/content/pm/UserInfo;->profileGroupId:I

    const-string v14, ")"

    invoke-static {v8, v0, v14}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v24, v0

    goto :goto_119

    :cond_117
    move-object/from16 v24, v13

    :goto_119
    if-eqz v12, :cond_120

    const-string v0, " (running)"

    move-object/from16 v25, v0

    goto :goto_122

    :cond_120
    move-object/from16 v25, v13

    :goto_122
    iget-boolean v0, v11, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v0, :cond_12b

    const-string v0, " (partial)"

    move-object/from16 v26, v0

    goto :goto_12d

    :cond_12b
    move-object/from16 v26, v13

    :goto_12d
    iget-boolean v0, v11, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v0, :cond_136

    const-string v0, " (pre-created)"

    move-object/from16 v27, v0

    goto :goto_138

    :cond_136
    move-object/from16 v27, v13

    :goto_138
    iget-boolean v0, v11, Landroid/content/pm/UserInfo;->convertedFromPreCreated:Z

    if-eqz v0, :cond_141

    const-string v0, " (converted)"

    move-object/from16 v28, v0

    goto :goto_143

    :cond_141
    move-object/from16 v28, v13

    :goto_143
    if-eqz v4, :cond_14a

    const-string v0, " (current)"

    move-object/from16 v31, v0

    goto :goto_14c

    :cond_14a
    move-object/from16 v31, v13

    :goto_14c
    if-eqz v2, :cond_150

    const-string v13, " (visible)"

    :cond_150
    move-object/from16 v32, v13

    move-object/from16 v21, v15

    filled-new-array/range {v19 .. v32}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%d: id=%d, name=%s, type=%s, flags=%s%s%s%s%s%s%s%s%s%s\n"

    invoke-virtual {v3, v2, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_16f

    :cond_15e
    move/from16 v17, v2

    move/from16 v18, v4

    if-eqz v12, :cond_166

    const-string v13, " running"

    :cond_166
    filled-new-array {v11, v13}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "\t%s%s\n"

    invoke-virtual {v3, v2, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_16f
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v17

    move/from16 v4, v18

    const/16 v8, -0x2710

    goto/16 :goto_7e

    :cond_17b
    move/from16 v18, v4

    return v18

    :sswitch_data_17e
    .sparse-switch
        0x5e9 -> :sswitch_30
        0x2901001 -> :sswitch_25
        0x6789dfe2 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_18c
    .packed-switch 0x0
        :pswitch_49  #00000000
        :pswitch_47  #00000001
        :pswitch_49  #00000002
    .end packed-switch
.end method

.method public final runReportPackageAllowlistProblems()I
    .registers 10

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, -0x3e8

    move v5, v3

    move v6, v5

    :goto_b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5f

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_96

    :goto_18
    move v8, v0

    goto :goto_45

    :sswitch_1a
    const-string v8, "--verbose"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_23

    goto :goto_18

    :cond_23
    const/4 v8, 0x3

    goto :goto_45

    :sswitch_25
    const-string v8, "--mode"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2e

    goto :goto_18

    :cond_2e
    const/4 v8, 0x2

    goto :goto_45

    :sswitch_30
    const-string v8, "-v"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_39

    goto :goto_18

    :cond_39
    move v8, v1

    goto :goto_45

    :sswitch_3b
    const-string v8, "--critical-only"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_44

    goto :goto_18

    :cond_44
    move v8, v3

    :goto_45
    packed-switch v8, :pswitch_data_a8

    const-string p0, "Invalid option: "

    invoke-virtual {p0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :pswitch_52  #0x2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_b

    :pswitch_5b  #0x1, 0x3
    move v5, v1

    goto :goto_b

    :pswitch_5d  #0x0
    move v6, v1

    goto :goto_b

    :cond_5f
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

    :try_start_82
    iget-object p0, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mSystemPackageInstaller:Lcom/android/server/pm/UserSystemPackageInstaller;

    invoke-virtual {p0, v0, v4, v5, v6}, Lcom/android/server/pm/UserSystemPackageInstaller;->dumpPackageWhitelistProblems(Landroid/util/IndentingPrintWriter;IZZ)V
    :try_end_87
    .catchall {:try_start_82 .. :try_end_87} :catchall_8b

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->close()V

    return v3

    :catchall_8b
    move-exception p0

    :try_start_8c
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_90

    goto :goto_94

    :catchall_90
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_94
    throw p0

    nop

    :sswitch_data_96
    .sparse-switch
        -0x513a2c86 -> :sswitch_3b
        0x5e9 -> :sswitch_30
        0x4f776f43 -> :sswitch_25
        0x6789dfe2 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_5d  #00000000
        :pswitch_5b  #00000001
        :pswitch_52  #00000002
        :pswitch_5b  #00000003
    .end packed-switch
.end method

.method public final runSetSystemUserModeEmulation()I
    .registers 12

    const-string/jumbo v0, "full"

    const-string/jumbo v1, "headless"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v5

    if-eqz v5, :cond_146

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    if-nez v5, :cond_13c

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/UserManagerServiceShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v6

    if-eqz v6, :cond_27

    const-string p0, "Cannot change system user mode when it has a credential"

    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_27
    move v6, v2

    move v7, v4

    :goto_29
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4d

    const-string v9, "--no-restart"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4b

    const-string v6, "--reboot"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_49

    const-string p0, "Invalid option: "

    invoke-virtual {p0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_49
    move v6, v4

    goto :goto_29

    :cond_4b
    move v7, v2

    goto :goto_29

    :cond_4d
    if-eqz v6, :cond_5c

    if-nez v7, :cond_5c

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "You can use --reboot or --no-restart, but not both"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_5c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v9

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_150

    :goto_6e
    move v10, v3

    goto :goto_8d

    :sswitch_70
    const-string/jumbo v10, "default"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7a

    goto :goto_6e

    :cond_7a
    const/4 v10, 0x2

    goto :goto_8d

    :sswitch_7c
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_83

    goto :goto_6e

    :cond_83
    move v10, v4

    goto :goto_8d

    :sswitch_85
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8c

    goto :goto_6e

    :cond_8c
    move v10, v2

    :goto_8d
    packed-switch v10, :pswitch_data_15e

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Invalid arg: %s\n"

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v3

    :pswitch_9e  #0x1
    move v4, v9

    goto :goto_a1

    :pswitch_a0  #0x0
    xor-int/2addr v4, v9

    :goto_a1
    :pswitch_a1  #0x2
    if-nez v4, :cond_b1

    if-eqz v9, :cond_a6

    move-object v0, v1

    :cond_a6
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "No change needed, system user is already %s\n"

    invoke-virtual {v5, v0, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v2

    :cond_b1
    const-string/jumbo p0, "Updating system property %s to %s"

    const-string/jumbo v0, "persist.debug.user_mode_emulation"

    filled-new-array {v0, v8}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v3, "UserManagerServiceShellCommand"

    invoke-static {v3, p0, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_df

    const-string/jumbo p0, "Rebooting to finalize the changes"

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "Rebooting to finalize changes"

    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/android/server/pm/UserManagerServiceShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_13b

    :cond_df
    if-eqz v7, :cond_12f

    const-string/jumbo p0, "Shutting PackageManager down"

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0}, Landroid/content/pm/PackageManagerInternal;->shutdown()V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    if-eqz p0, :cond_10a

    :try_start_f8
    const-string/jumbo v0, "Shutting ActivityManager down"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2710

    invoke-interface {p0, v0}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_103
    .catch Landroid/os/RemoteException; {:try_start_f8 .. :try_end_103} :catch_104

    goto :goto_10a

    :catch_104
    move-exception p0

    const-string v0, "Failed to shut down ActivityManager"

    invoke-static {v0, p0, v3}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_10a
    :goto_10a
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

    goto :goto_13b

    :cond_12f
    const-string/jumbo p0, "System user mode changed - please reboot (or restart Android runtime) to continue"

    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p0, "NOTICE: after restart, some apps might be uninstalled (and their data will be lost)"

    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_13b
    return v2

    :cond_13c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Command only available on root user"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14f

    :cond_146
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Command not available on user builds"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_14f
    return v3

    :sswitch_data_150
    .sparse-switch
        -0x42768087 -> :sswitch_85
        0x30228f -> :sswitch_7c
        0x5c13d641 -> :sswitch_70
    .end sparse-switch

    :pswitch_data_15e
    .packed-switch 0x0
        :pswitch_a0  #00000000
        :pswitch_9e  #00000001
        :pswitch_a1  #00000002
    .end packed-switch
.end method
