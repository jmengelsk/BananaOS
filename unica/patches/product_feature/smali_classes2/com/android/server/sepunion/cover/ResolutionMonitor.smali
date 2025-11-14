.class public Lcom/android/server/sepunion/cover/ResolutionMonitor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCallbackRunnable:Ljava/lang/Runnable;

.field public mConfiguration:Landroid/content/res/Configuration;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/Runnable;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor;->mCallbackRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor;->mConfiguration:Landroid/content/res/Configuration;

    const-string/jumbo p2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-static {p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p2

    new-instance p3, Lcom/android/server/sepunion/cover/ResolutionMonitor$1;

    invoke-direct {p3, p0}, Lcom/android/server/sepunion/cover/ResolutionMonitor$1;-><init>(Lcom/android/server/sepunion/cover/ResolutionMonitor;)V

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
