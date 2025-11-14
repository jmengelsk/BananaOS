.class public final Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/timezonedetector/Dumpable;


# instance fields
.field public final mIndex:I

.field public final mName:Ljava/lang/String;

.field public final mServiceAction:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    if-ltz p2, :cond_b

    const/4 p1, 0x1

    if-gt p2, p1, :cond_b

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iput p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->mIndex:I

    iput-object p3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->mName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->mServiceAction:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final createProvider()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
    .registers 13

    new-instance v1, Lcom/android/server/timezonedetector/location/RealProviderMetricsLogger;

    iget v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->mIndex:I

    invoke-direct {v1, v0}, Lcom/android/server/timezonedetector/location/RealProviderMetricsLogger;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    if-nez v0, :cond_14

    iget-object v0, v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    check-cast v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getPrimaryLocationTimeZoneProviderMode()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_14
    iget-object v0, v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    check-cast v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getSecondaryLocationTimeZoneProviderMode()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    const-string/jumbo v2, "disabled"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    new-instance v0, Lcom/android/server/timezonedetector/location/DisabledLocationTimeZoneProvider;

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    move-object v3, v2

    iget-object v2, v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    move-object v4, v3

    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->mName:Ljava/lang/String;

    iget-object p0, v4, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    move-object v4, p0

    check-cast v4, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    monitor-enter v4

    :try_start_35
    iget-boolean v5, v4, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mRecordStateChangesForTests:Z
    :try_end_37
    .catchall {:try_start_35 .. :try_end_37} :catchall_41

    monitor-exit v4

    new-instance v4, Lcom/android/server/timezonedetector/location/DisabledLocationTimeZoneProvider$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-direct/range {v0 .. v5}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;-><init>(Lcom/android/server/timezonedetector/location/RealProviderMetricsLogger;Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;Ljava/lang/String;Lcom/android/server/timezonedetector/location/TimeZoneProviderEventPreProcessor;Z)V

    return-object v0

    :catchall_41
    move-exception v0

    move-object p0, v0

    :try_start_43
    monitor-exit v4
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_41

    throw p0

    :cond_45
    iget-object v9, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->mServiceAction:Ljava/lang/String;

    iget v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->mIndex:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_61

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    iget-object v0, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    move-object v4, v0

    check-cast v4, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    monitor-enter v4

    :try_start_55
    iget-object v0, v4, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderMode:Ljava/lang/String;
    :try_end_57
    .catchall {:try_start_55 .. :try_end_57} :catchall_5d

    if-eqz v0, :cond_5a

    move v2, v3

    :cond_5a
    monitor-exit v4

    :goto_5b
    move v11, v2

    goto :goto_70

    :catchall_5d
    move-exception v0

    move-object p0, v0

    :try_start_5f
    monitor-exit v4
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5d

    throw p0

    :cond_61
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    iget-object v0, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    move-object v4, v0

    check-cast v4, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    monitor-enter v4

    :try_start_69
    iget-object v0, v4, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderMode:Ljava/lang/String;
    :try_end_6b
    .catchall {:try_start_69 .. :try_end_6b} :catchall_9d

    if-eqz v0, :cond_6e

    move v2, v3

    :cond_6e
    monitor-exit v4

    goto :goto_5b

    :goto_70
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->getPackageName()Ljava/lang/String;

    move-result-object v10

    new-instance v4, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    iget-object v6, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mHandler:Landroid/os/Handler;

    iget-object v8, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    move-object v5, v4

    invoke-direct/range {v5 .. v11}, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v4, v5

    new-instance v0, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    move-object v3, v2

    iget-object v2, v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->mName:Ljava/lang/String;

    iget-object v3, v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    check-cast v3, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    monitor-enter v3

    :try_start_91
    iget-boolean v5, v3, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mRecordStateChangesForTests:Z
    :try_end_93
    .catchall {:try_start_91 .. :try_end_93} :catchall_99

    monitor-exit v3

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;-><init>(Lcom/android/server/timezonedetector/location/RealProviderMetricsLogger;Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;Ljava/lang/String;Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;Z)V

    return-object v0

    :catchall_99
    move-exception v0

    move-object p0, v0

    :try_start_9b
    monitor-exit v3
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_99

    throw p0

    :catchall_9d
    move-exception v0

    move-object p0, v0

    :try_start_9f
    monitor-exit v4
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9d

    throw p0
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 4

    iget p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->mIndex:I

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    if-nez p2, :cond_f

    iget-object p2, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    check-cast p2, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    invoke-virtual {p2}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getPrimaryLocationTimeZoneProviderMode()Ljava/lang/String;

    move-result-object p2

    goto :goto_17

    :cond_f
    iget-object p2, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    check-cast p2, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    invoke-virtual {p2}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getSecondaryLocationTimeZoneProviderMode()Ljava/lang/String;

    move-result-object p2

    :goto_17
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo v0, "getMode()=%s\n"

    invoke-virtual {p1, v0, p2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->getPackageName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p2, "getPackageName()=%s\n"

    invoke-virtual {p1, p2, p0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->mIndex:I

    if-nez v0, :cond_27

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    move-object v0, p0

    check-cast v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    monitor-enter v0

    :try_start_c
    iget-object p0, v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderMode:Ljava/lang/String;

    if-eqz p0, :cond_16

    iget-object p0, v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderPackageName:Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_14

    monitor-exit v0

    return-object p0

    :catchall_14
    move-exception p0

    goto :goto_25

    :cond_16
    :try_start_16
    iget-object p0, v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x10403b1

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_14

    monitor-exit v0

    return-object p0

    :goto_25
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_14

    throw p0

    :cond_27
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    check-cast p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    monitor-enter p0

    :try_start_2e
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderMode:Ljava/lang/String;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderPackageName:Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_36

    monitor-exit p0

    return-object v0

    :catchall_36
    move-exception v0

    goto :goto_47

    :cond_38
    :try_start_38
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10403d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_45
    .catchall {:try_start_38 .. :try_end_45} :catchall_36

    monitor-exit p0

    return-object v0

    :goto_47
    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_36

    throw v0
.end method
