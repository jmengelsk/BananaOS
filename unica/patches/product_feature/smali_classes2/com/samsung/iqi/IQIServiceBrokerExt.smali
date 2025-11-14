.class public final Lcom/samsung/iqi/IQIServiceBrokerExt;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final DEBUG:Z

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsOptOutTriggered:Z

.field public final mLock:Ljava/lang/Object;

.field public final mObserver:Lcom/samsung/iqi/IQIServiceBrokerExt$2;

.field public mServiceRunning:Z

.field public mServiceStateListnerForIQI:Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;

.field public final mUploadStateReceiver:Lcom/samsung/iqi/IQIServiceBrokerExt$3;

.field public final rbIqiState:Lcom/samsung/iqi/IQIServiceBrokerExt$1;


# direct methods
.method public static -$$Nest$mchangeIqiState(Lcom/samsung/iqi/IQIServiceBrokerExt;Z)V
    .registers 4

    if-eqz p1, :cond_2f

    iget-boolean v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string/jumbo v0, "changeIqiState: newState="

    const-string v1, "IQIServiceBrokerExt"

    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_e
    const-string/jumbo v0, "iqi"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_32

    const-class v0, Lcom/android/server/SystemServiceManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemServiceManager;

    const-string/jumbo v1, "com.att.iqi.libs.IQIServiceBroker"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-result-object v0

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    invoke-virtual {p0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->registerIQIServiceStateListener()V

    goto :goto_32

    :cond_2f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_32
    :goto_32
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.att.iqi.action.CHANGE_IQI_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.att.iqi.extra.IQI_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static -$$Nest$smsubmitSS2S(Z)V
    .registers 4

    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    move-result-object v0

    if-eqz v0, :cond_1c

    sget-object v1, Lcom/att/iqi/lib/metrics/ss/SS2S;->ID:Lcom/att/iqi/lib/Metric$ID;

    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/IQIManager;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    move-result v1

    if-eqz v1, :cond_1c

    new-instance v1, Lcom/att/iqi/lib/metrics/ss/SS2S;

    invoke-direct {v1}, Lcom/att/iqi/lib/metrics/ss/SS2S;-><init>()V

    xor-int/lit8 p0, p0, 0x1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lcom/att/iqi/lib/metrics/ss/SS2S;->setSetting(IB)Lcom/att/iqi/lib/metrics/ss/SS2S;

    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/IQIManager;->submitMetric(Lcom/att/iqi/lib/Metric;)V

    :cond_1c
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceRunning:Z

    const-string/jumbo v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mIsOptOutTriggered:Z

    new-instance v0, Lcom/samsung/iqi/IQIServiceBrokerExt$1;

    invoke-direct {v0, p0}, Lcom/samsung/iqi/IQIServiceBrokerExt$1;-><init>(Lcom/samsung/iqi/IQIServiceBrokerExt;)V

    iput-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->rbIqiState:Lcom/samsung/iqi/IQIServiceBrokerExt$1;

    new-instance v0, Lcom/samsung/iqi/IQIServiceBrokerExt$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/iqi/IQIServiceBrokerExt$2;-><init>(Lcom/samsung/iqi/IQIServiceBrokerExt;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mObserver:Lcom/samsung/iqi/IQIServiceBrokerExt$2;

    new-instance v0, Lcom/samsung/iqi/IQIServiceBrokerExt$3;

    invoke-direct {v0, p0}, Lcom/samsung/iqi/IQIServiceBrokerExt$3;-><init>(Lcom/samsung/iqi/IQIServiceBrokerExt;)V

    iput-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mUploadStateReceiver:Lcom/samsung/iqi/IQIServiceBrokerExt$3;

    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContentResolver:Landroid/content/ContentResolver;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceStateListnerForIQI:Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final registerIQIServiceStateListener()V
    .registers 4

    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceStateListnerForIQI:Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;

    if-nez v1, :cond_20

    iget-boolean v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z

    if-eqz v1, :cond_16

    const-string v1, "IQIServiceBrokerExt"

    const-string/jumbo v2, "Register IQI Service State Change Listener"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    new-instance v1, Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;

    invoke-direct {v1, p0}, Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;-><init>(Lcom/samsung/iqi/IQIServiceBrokerExt;)V

    iput-object v1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceStateListnerForIQI:Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;

    invoke-virtual {v0, v1}, Lcom/att/iqi/lib/IQIManager;->registerServiceStateChangeListener(Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;)V

    :cond_20
    return-void
.end method

.method public final startIqi()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "att_iqi_report_diagnostic"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_13

    iget-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v0, v2

    :cond_13
    iget-boolean v2, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z

    if-eqz v2, :cond_1f

    const-string/jumbo v2, "startIqi MNDToggleOpt="

    const-string v3, "IQIServiceBrokerExt"

    invoke-static {v0, v2, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1f
    const/4 v2, 0x2

    if-ne v0, v2, :cond_23

    return-void

    :cond_23
    iget-object v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mObserver:Lcom/samsung/iqi/IQIServiceBrokerExt$2;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-class v0, Lcom/android/server/SystemServiceManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemServiceManager;

    const-string/jumbo v1, "com.att.iqi.libs.IQIServiceBroker"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    invoke-virtual {p0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->registerIQIServiceStateListener()V

    return-void
.end method
