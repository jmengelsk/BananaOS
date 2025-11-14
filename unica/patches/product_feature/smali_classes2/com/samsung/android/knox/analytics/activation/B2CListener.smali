.class public Lcom/samsung/android/knox/analytics/activation/B2CListener;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final PERMISSION_KNOX_ANALYTICS:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ANALYTICS_INTERNAL"

.field public static final TAG:Ljava/lang/String; = "[KnoxAnalytics] B2CListener"


# instance fields
.field public final mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

.field public mActivationReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;

.field public final mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public mPackageRemovedReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    iput-object p2, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final checkRemovedReceiver()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mPackageRemovedReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getB2CFeaturePackageList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_12
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mPackageRemovedReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mPackageRemovedReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;

    :cond_1c
    return-void
.end method

.method public final register()V
    .registers 8

    const-string/jumbo v0, "com.samsung.android.knox.analytics.intent.action.B2C_ACTIVATION"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v3

    new-instance v0, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;-><init>(Lcom/samsung/android/knox/analytics/activation/B2CListener;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mActivationReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "B2CListenerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener;->mActivationReceiver:Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;

    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_ANALYTICS_INTERNAL"

    const/4 v6, 0x2

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method
