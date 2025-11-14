.class public final Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mCondition:I

.field public final mContext:Landroid/content/Context;

.field public final mEdgeLightingList:Ljava/util/List;

.field public final mEdgeLightingListenerManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager;

.field public final mEdgeLightingSettingObserver:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;

.field public final mHandler:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$1;

.field public final mHosts:Ljava/util/ArrayList;

.field public mIsConnectedMode:Z

.field public mNeedToRecheckSetting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mNeedToRecheckSetting:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager;

    invoke-direct {v2}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager;-><init>()V

    iput-object v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mEdgeLightingListenerManager:Lcom/android/server/notification/sec/edgelighting/EdgeLightingListenerManager;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v2, -0x2

    const-string/jumbo v3, "edge_lighting_show_condition"

    invoke-static {p1, v3, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mCondition:I

    new-instance p1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$1;

    invoke-direct {p1, p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$1;-><init>(Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;)V

    iput-object p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mHandler:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$1;

    new-instance v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;-><init>(Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$1;)V

    iput-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mEdgeLightingSettingObserver:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;

    return-void
.end method


# virtual methods
.method public final createEdgeLightingService()V
    .locals 4

    sget-object v0, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    iget-boolean v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.systemui"

    const-string/jumbo v3, "com.android.systemui.edgelighting.EdgeLightingService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public final getEdgeLightingCondition()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    if-nez v1, :cond_0

    iget p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mCondition:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return v3

    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    iget p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->condition:I

    monitor-exit v0

    return p0

    :cond_2
    monitor-exit v0

    return v3

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isAvailableEdgeLighting(I)Z
    .locals 7

    const-string/jumbo v0, "isAvailableEdgeLighting: condition="

    iget-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mNeedToRecheckSetting:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mNeedToRecheckSetting:Z

    iget-object v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mEdgeLightingSettingObserver:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;

    invoke-virtual {v2}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->recheckEdgeLightingDefaultValue()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "EdgeLightingClientManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mCondition="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mCondition:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mIsConnected="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-boolean v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    const/4 v2, 0x1

    const/4 v4, 0x7

    if-nez v0, :cond_4

    iget p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mCondition:I

    if-eq p0, v4, :cond_2

    and-int/2addr p0, p1

    if-eqz p0, :cond_3

    :cond_2
    move v3, v2

    :cond_3
    monitor-exit v1

    return v3

    :cond_4
    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v2, :cond_5

    monitor-exit v1

    return v3

    :cond_5
    if-ne p1, v4, :cond_6

    monitor-exit v1

    return v2

    :cond_6
    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v5, v3

    :cond_7
    if-ge v5, v0, :cond_9

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    iget v6, v6, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->condition:I

    if-eq v6, v4, :cond_8

    and-int/2addr v6, p1

    if-eqz v6, :cond_7

    :cond_8
    monitor-exit v1

    return v2

    :cond_9
    monitor-exit v1

    return v3

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onScreenChanged(Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    if-eqz v4, :cond_0

    sget-boolean v5, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    const-string v6, "EdgeLightingClientManager"

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "onScreenChanged on = "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v5, v4, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    if-nez v5, :cond_2

    const-string/jumbo v4, "onScreenChanged : token is null"

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v4, v4, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$1;

    const/4 v5, 0x3

    invoke-virtual {v4, v5, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final startEdgeLightingInternal(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .locals 4

    const-string/jumbo v0, "startEdgeLightingInternal() reject edge lighting because application suspend package="

    iget-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->isPackageSuspended(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->startEdgeLightingService(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_2
    :goto_1
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->updateEdgeLightingHistory(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final startEdgeLightingService(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .locals 2

    sget-boolean v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startEdgeLightingService : pkg = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "EdgeLightingClientManager"

    invoke-static {v0, p3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mHandler:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$1;

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p3, p1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final stopEdgeLightingInternal(ILjava/lang/String;)V
    .locals 7

    const-string/jumbo v0, "stopEdgeLightingInternal mHosts is null. pkg="

    iget-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    const-string v2, "EdgeLightingClientManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",reason="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :cond_1
    :goto_1
    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v4, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    const-string v5, "EdgeLightingClientManager"

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    const-string/jumbo v4, "onStopEdgeLighting pkg = "

    const-string v6, ", reason = "

    invoke-static {p1, v4, p2, v6, v5}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v4, v3, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    if-nez v4, :cond_3

    const-string/jumbo v3, "onStopEdgeLighting : token is null"

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v3, v3, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$1;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->updateEdgeLightingHistory(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
