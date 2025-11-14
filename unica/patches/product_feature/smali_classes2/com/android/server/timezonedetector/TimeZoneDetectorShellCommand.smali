.class public final Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v5, "set_auto_detection_enabled"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0xd

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v5, "handle_location_algorithm_event"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v4, 0xc

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v5, "is_geo_detection_supported"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v4, 0xb

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v5, "enable_telephony_fallback"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v4, 0xa

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v5, "suggest_telephony_time_zone"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v4, 0x9

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v5, "is_geo_detection_enabled"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v4, 0x8

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v5, "confirm_time_zone"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_7
    const-string/jumbo v5, "set_geo_detection_enabled"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_0

    :cond_8
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_8
    const-string/jumbo v5, "dump_metrics"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_0

    :cond_9
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_9
    const-string/jumbo v5, "is_auto_detection_enabled"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_0

    :cond_a
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_a
    const-string/jumbo v5, "set_time_zone_state_for_tests"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_0

    :cond_b
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_b
    const-string/jumbo v5, "get_time_zone_state"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_0

    :cond_c
    move v4, v0

    goto :goto_0

    :sswitch_c
    const-string/jumbo v5, "suggest_manual_time_zone"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_0

    :cond_d
    move v4, v2

    goto :goto_0

    :sswitch_d
    const-string/jumbo v5, "is_telephony_detection_supported"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_0

    :cond_e
    move v4, v1

    :goto_0
    packed-switch v4, :pswitch_data_0

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    new-instance v0, Landroid/app/time/TimeZoneConfiguration$Builder;

    invoke-direct {v0}, Landroid/app/time/TimeZoneConfiguration$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/time/TimeZoneConfiguration$Builder;->setAutoDetectionEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/time/TimeZoneConfiguration$Builder;->build()Landroid/app/time/TimeZoneConfiguration;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {p0, v3, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->updateConfiguration(ILandroid/app/time/TimeZoneConfiguration;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :pswitch_1
    new-instance p1, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;I)V

    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;I)V

    invoke-virtual {p0, p1, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSingleArgMethod(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)I

    move-result p0

    return p0

    :pswitch_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    move-object v0, p0

    check-cast v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    monitor-enter v0

    :try_start_0
    iget-object p0, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return v1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_3
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    check-cast p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    const-string p1, "Command line"

    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->enableTelephonyTimeZoneFallback(Ljava/lang/String;)V

    return v1

    :pswitch_4
    new-instance p1, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;I)V

    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;I)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSingleArgMethod(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)I

    move-result p0

    return p0

    :pswitch_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {p0, v3}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->getCapabilitiesAndConfig(I)Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getConfiguration()Landroid/app/time/TimeZoneConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/time/TimeZoneConfiguration;->isGeoDetectionEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return v1

    :pswitch_6
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string p1, "--zone_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Unknown option: "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->confirmTimeZone(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    return v1

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "No zoneId specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    new-instance v0, Landroid/app/time/TimeZoneConfiguration$Builder;

    invoke-direct {v0}, Landroid/app/time/TimeZoneConfiguration$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/time/TimeZoneConfiguration$Builder;->setGeoDetectionEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/time/TimeZoneConfiguration$Builder;->build()Landroid/app/time/TimeZoneConfiguration;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {p0, v3, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->updateConfiguration(ILandroid/app/time/TimeZoneConfiguration;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :pswitch_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    check-cast p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->generateMetricsState()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;

    move-result-object p0

    const-string/jumbo v0, "MetricsTimeZoneDetectorState:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :pswitch_9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {p0, v3}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->getCapabilitiesAndConfig(I)Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getConfiguration()Landroid/app/time/TimeZoneConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/time/TimeZoneConfiguration;->isAutoDetectionEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return v1

    :pswitch_a
    invoke-static {p0}, Landroid/app/time/TimeZoneState;->parseCommandLineArgs(Landroid/os/ShellCommand;)Landroid/app/time/TimeZoneState;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    check-cast v0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_2
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    check-cast v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/time/TimeZoneState;->getUserShouldConfirmId()Z

    move-result v4

    if-eqz v4, :cond_12

    move v4, v1

    goto :goto_2

    :cond_12
    const/16 v4, 0x64

    :goto_2
    invoke-virtual {p1}, Landroid/app/time/TimeZoneState;->getId()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v5, "setTimeZoneState()"

    iget-object v0, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/Environment;

    check-cast v0, Lcom/android/server/timezonedetector/EnvironmentImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0, v4, p1, v5}, Lcom/android/server/alarm/AlarmManagerService;->setTimeZoneImpl(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    check-cast p0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_1
    move-exception p1

    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    check-cast p0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :pswitch_b
    iget-object p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->getTimeZoneState()Landroid/app/time/TimeZoneState;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return v1

    :pswitch_c
    new-instance p1, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;I)V

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;I)V

    invoke-virtual {p0, p1, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSingleArgMethod(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)I

    move-result p0

    return p0

    :pswitch_d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    check-cast p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    iget-boolean v0, v0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    return v1

    :catchall_2
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x71c6eb88 -> :sswitch_d
        -0x5f15f000 -> :sswitch_c
        -0x5ebe7bf9 -> :sswitch_b
        -0x51772501 -> :sswitch_a
        -0x4e7e5c54 -> :sswitch_9
        -0x4b579288 -> :sswitch_8
        -0x26840a04 -> :sswitch_7
        -0x15bd4ce1 -> :sswitch_6
        0x1d9e00c4 -> :sswitch_5
        0x2390c53c -> :sswitch_4
        0x4394f365 -> :sswitch_3
        0x5298f571 -> :sswitch_2
        0x6d140877 -> :sswitch_1
        0x71625574 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
    .locals 5

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo v0, "time_zone_detector"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "Time Zone Detector (%s) commands:\n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "  help\n"

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v1, "    Print this help text.\n"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v1, "is_auto_detection_enabled"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "  %s\n"

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v1, "    Prints true/false according to the automatic time zone detection setting\n"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v1, "set_auto_detection_enabled"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "  %s true|false\n"

    invoke-virtual {p0, v3, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v1, "    Sets the automatic time zone detection setting.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v1, "is_telephony_detection_supported"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v1, "    Prints true/false according to whether telephony time zone detection is supported on this device.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v1, "is_geo_detection_supported"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v1, "    Prints true/false according to whether geolocation time zone detection is supported on this device.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v1, "is_geo_detection_enabled"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v1, "    Prints true/false according to the geolocation time zone detection setting.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v1, "set_geo_detection_enabled"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v1, "    Sets the geolocation time zone detection enabled setting.\n"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v1, "enable_telephony_fallback"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v3, "    Signals that telephony time zone detection fall back can be used if geolocation detection is supported and enabled.\n)"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v3, "    This is a temporary state until geolocation detection becomes \"certain\".\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v3, "    To have an effect this requires that the telephony fallback feature is supported on the device, see below for device_config flags.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v3, "handle_location_algorithm_event"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "  %s <location event opts>\n"

    invoke-virtual {p0, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v3, "    Simulates an event from the location time zone detection algorithm.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v3, "suggest_manual_time_zone"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "  %s <manual suggestion opts>\n"

    invoke-virtual {p0, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v3, "    Suggests a time zone as if supplied by a user manually.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v3, "suggest_telephony_time_zone"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "  %s <telephony suggestion opts>\n"

    invoke-virtual {p0, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v3, "    Simulates a time zone suggestion from the telephony time zone detection algorithm.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v3, "get_time_zone_state"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v3, "    Returns the current time zone setting state.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v3, "set_time_zone_state_for_tests"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "  %s <time zone state options>\n"

    invoke-virtual {p0, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v3, "    Sets the current time zone state for tests.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v3, "confirm_time_zone"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "  %s <--zone_id Olson ID>\n"

    invoke-virtual {p0, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v3, "    Tries to confirms the time zone, raising the confidence.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v3, "dump_metrics"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v3, "    Dumps the service metrics to stdout for inspection.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v3, "Location algorithm event options:"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  --status {LocationTimeZoneAlgorithmStatus toString() format}"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  [--suggestion {UNCERTAIN|EMPTY|<Olson ID>+}]"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "See "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for more information"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    invoke-static {p0}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->printCommandLineOpts(Ljava/io/PrintWriter;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    invoke-static {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->printCommandLineOpts(Ljava/io/PrintWriter;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    invoke-static {p0}, Landroid/app/time/TimeZoneState;->printCommandLineOpts(Ljava/io/PrintWriter;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v3, "system_time"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "This service is also affected by the following device_config flags in the %s namespace:\n"

    invoke-virtual {p0, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v3, "location_time_zone_detection_feature_supported"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v3, "    Only observed if the geolocation time zone detection feature is enabled in config.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v3, "    Set this to false to disable the feature.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v3, "location_time_zone_detection_run_in_background_enabled"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v3, "    Runs geolocation time zone detection even when it not enabled by the user. The result is not used to set the device\'s time zone [*]\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v3, "location_time_zone_detection_setting_enabled_default"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v3, "    Only used if the device does not have an explicit \'geolocation time zone detection enabled\' setting stored [*].\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v3, "    The default is when unset is false.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v3, "location_time_zone_detection_setting_enabled_override"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v3, "    Used to override the device\'s \'geolocation time zone detection enabled\' setting [*].\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v3, "time_zone_detector_auto_detection_enabled_default"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v3, "    Used to set the automatic time zone detection enabled default, i.e. when the device\'s automatic time zone detection enabled setting hasn\'t been set explicitly. Intended for internal testers."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v3, "time_zone_detector_telephony_fallback_supported"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v3, "    Used to enable / disable support for telephony detection fallback. Also see the %s command.\n"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string/jumbo v1, "enhanced_metrics_collection_enabled"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v1, "    Used to increase the detail of metrics collected / reported.\n"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v1, "[*] To be enabled, the user must still have location = on / auto time zone detection = on.\n"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v1, "See \"adb shell cmd device_config\" for more information on setting flags.\n"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "location_time_zone_manager"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Also see \"adb shell cmd %s help\" for lower-level location time zone commands / settings.\n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final runSingleArgMethod(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)I
    .locals 2

    const-string v0, "Arg "

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Error: arg not specified"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " injected."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return v1
.end method
