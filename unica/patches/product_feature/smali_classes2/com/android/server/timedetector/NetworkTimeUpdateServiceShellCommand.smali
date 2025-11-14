.class public final Lcom/android/server/timedetector/NetworkTimeUpdateServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mNetworkTimeUpdateService:Lcom/android/server/timedetector/NetworkTimeUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateServiceShellCommand;->mNetworkTimeUpdateService:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_8

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_8
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_12a

    goto :goto_35

    :sswitch_12
    const-string/jumbo v3, "force_refresh"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_35

    :cond_1c
    const/4 v2, 0x2

    goto :goto_35

    :sswitch_1e
    const-string/jumbo v3, "reset_server_config_for_tests"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    goto :goto_35

    :cond_28
    const/4 v2, 0x1

    goto :goto_35

    :sswitch_2a
    const-string/jumbo v3, "set_server_config_for_tests"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    goto :goto_35

    :cond_34
    move v2, v0

    :goto_35
    packed-switch v2, :pswitch_data_138

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_3d  #0x2
    iget-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateServiceShellCommand;->mNetworkTimeUpdateService:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    iget-object v1, p1, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.SET_TIME"

    const-string/jumbo v3, "force network time refresh"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_4e
    iget-object v3, p1, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_aa

    :try_start_51
    iget-object v4, p1, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    monitor-exit v3
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_ac

    if-nez v4, :cond_5b

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v0

    goto :goto_9f

    :cond_5b
    :try_start_5b
    iget-object v3, p1, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mEngine:Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;

    iget-object p1, p1, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mRefreshCallbacks:Lcom/android/server/timedetector/NetworkTimeUpdateService$1;

    iget-object v5, v3, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mElapsedRealtimeMillisSupplier:Ljava/util/function/Supplier;

    invoke-interface {v5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    monitor-enter v3
    :try_end_6b
    .catchall {:try_start_5b .. :try_end_6b} :catchall_aa

    :try_start_6b
    iput-object v5, v3, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mLastRefreshAttemptElapsedRealtimeMillis:Ljava/lang/Long;

    monitor-exit v3
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_a7

    :try_start_6e
    iget-object v5, v3, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v5, v4}, Landroid/util/NtpTrustedTime;->forceRefresh(Landroid/net/Network;)Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "forceRefreshForTests: refreshSuccessful="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->logToDebugAndDumpsys(Ljava/lang/String;)V

    if-eqz v4, :cond_9c

    iget-object v5, v3, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v5}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v5

    if-nez v5, :cond_97

    const-string/jumbo p1, "forceRefreshForTests: cachedTimeResult unexpectedly null"

    invoke-virtual {v3, p1}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->logToDebugAndDumpsys(Ljava/lang/String;)V

    goto :goto_9c

    :cond_97
    const-string v3, "EngineImpl.forceRefreshForTests()"

    invoke-static {v5, v3, p1}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->makeNetworkTimeSuggestion(Landroid/util/NtpTrustedTime$TimeResult;Ljava/lang/String;Lcom/android/server/timedetector/NetworkTimeUpdateService$1;)V
    :try_end_9c
    .catchall {:try_start_6e .. :try_end_9c} :catchall_aa

    :cond_9c
    :goto_9c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_9f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Z)V

    return v0

    :catchall_a7
    move-exception p0

    :try_start_a8
    monitor-exit v3
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    :try_start_a9
    throw p0
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_aa

    :catchall_aa
    move-exception p0

    goto :goto_af

    :catchall_ac
    move-exception p0

    :try_start_ad
    monitor-exit v3
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    :try_start_ae
    throw p0
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_aa

    :goto_af
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :pswitch_b3  #0x1
    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateServiceShellCommand;->mNetworkTimeUpdateService:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    invoke-virtual {p0, v1}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->setServerConfigForTests(Landroid/util/NtpTrustedTime$NtpConfig;)V

    return v0

    :pswitch_b9  #0x0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_be
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_104

    const-string v3, "--timeout_millis"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f6

    const-string v3, "--server"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e9

    :try_start_d4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/util/NtpTrustedTime;->parseNtpUriStrict(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_df
    .catch Ljava/net/URISyntaxException; {:try_start_d4 .. :try_end_df} :catch_e0

    goto :goto_be

    :catch_e0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad NTP server value"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_e9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Unknown option: "

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    goto :goto_be

    :cond_104
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_120

    if-eqz v1, :cond_117

    new-instance v2, Landroid/util/NtpTrustedTime$NtpConfig;

    invoke-direct {v2, p1, v1}, Landroid/util/NtpTrustedTime$NtpConfig;-><init>(Ljava/util/List;Ljava/time/Duration;)V

    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateServiceShellCommand;->mNetworkTimeUpdateService:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    invoke-virtual {p0, v2}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->setServerConfigForTests(Landroid/util/NtpTrustedTime$NtpConfig;)V

    return v0

    :cond_117
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Missing required option: ----timeout_millis"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_120
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Missing required option: ----server"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_12a
    .sparse-switch
        -0x641cecf3 -> :sswitch_2a
        0x3eebcfa -> :sswitch_1e
        0x70bba987 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_138
    .packed-switch 0x0
        :pswitch_b9  #00000000
        :pswitch_b3  #00000001
        :pswitch_3d  #00000002
    .end packed-switch
.end method

.method public final onHelp()V
    .registers 6

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "network_time_update_service"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "Network Time Update Service (%s) commands:\n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "  help\n"

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v1, "    Print this help text.\n"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v1, "force_refresh"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "  %s\n"

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v1, "    Refreshes the latest time. Prints whether it was successful.\n"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v1, "set_server_config_for_tests"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v3, "    Sets the NTP server config for tests. The config is not persisted.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v3, "--server"

    const-string v4, "--timeout_millis"

    filled-new-array {v3, v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "      Options: %s <uri> [%s <additional uris>]+ %s <millis>\n"

    invoke-virtual {p0, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v3, "      NTP server URIs must be in the form \"ntp://hostname\" or \"ntp://hostname:port\"\n"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v0, "reset_server_config_for_tests"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v0, "    Resets/clears the NTP server config set via %s.\n"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method
