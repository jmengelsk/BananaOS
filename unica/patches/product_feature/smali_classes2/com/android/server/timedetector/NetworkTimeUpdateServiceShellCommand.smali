.class public final Lcom/android/server/timedetector/NetworkTimeUpdateServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mNetworkTimeUpdateService:Lcom/android/server/timedetector/NetworkTimeUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateServiceShellCommand;->mNetworkTimeUpdateService:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "force_refresh"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "reset_server_config_for_tests"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "set_server_config_for_tests"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v0

    :goto_0
    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_0
    iget-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateServiceShellCommand;->mNetworkTimeUpdateService:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    iget-object v1, p1, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.SET_TIME"

    const-string/jumbo v3, "force network time refresh"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p1, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p1, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v4, :cond_4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v0

    goto :goto_2

    :cond_4
    :try_start_2
    iget-object v3, p1, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mEngine:Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;

    iget-object p1, p1, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mRefreshCallbacks:Lcom/android/server/timedetector/NetworkTimeUpdateService$1;

    iget-object v5, v3, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mElapsedRealtimeMillisSupplier:Ljava/util/function/Supplier;

    invoke-interface {v5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iput-object v5, v3, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mLastRefreshAttemptElapsedRealtimeMillis:Ljava/lang/Long;

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
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

    if-eqz v4, :cond_6

    iget-object v5, v3, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v5}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v5

    if-nez v5, :cond_5

    const-string/jumbo p1, "forceRefreshForTests: cachedTimeResult unexpectedly null"

    invoke-virtual {v3, p1}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->logToDebugAndDumpsys(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v3, "EngineImpl.forceRefreshForTests()"

    invoke-static {v5, v3, p1}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;->makeNetworkTimeSuggestion(Landroid/util/NtpTrustedTime$TimeResult;Ljava/lang/String;Lcom/android/server/timedetector/NetworkTimeUpdateService$1;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_6
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Z)V

    return v0

    :catchall_0
    move-exception p0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateServiceShellCommand;->mNetworkTimeUpdateService:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    invoke-virtual {p0, v1}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->setServerConfigForTests(Landroid/util/NtpTrustedTime$NtpConfig;)V

    return v0

    :pswitch_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string v3, "--timeout_millis"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "--server"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :try_start_9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/util/NtpTrustedTime;->parseNtpUriStrict(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad NTP server value"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Unknown option: "

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    if-eqz v1, :cond_a

    new-instance v2, Landroid/util/NtpTrustedTime$NtpConfig;

    invoke-direct {v2, p1, v1}, Landroid/util/NtpTrustedTime$NtpConfig;-><init>(Ljava/util/List;Ljava/time/Duration;)V

    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateServiceShellCommand;->mNetworkTimeUpdateService:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    invoke-virtual {p0, v2}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->setServerConfigForTests(Landroid/util/NtpTrustedTime$NtpConfig;)V

    return v0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Missing required option: ----timeout_millis"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Missing required option: ----server"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x641cecf3 -> :sswitch_2
        0x3eebcfa -> :sswitch_1
        0x70bba987 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 5

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
