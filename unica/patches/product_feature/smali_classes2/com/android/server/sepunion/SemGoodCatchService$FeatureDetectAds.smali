.class public final Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;
.super Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mActiveState:Z

.field public mForegroundUid:I

.field public final mIntentFilter:Landroid/content/IntentFilter;

.field public final mOnStateListener:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$3;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mPreviousUid:I

.field public final mProcessObserver:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;

.field public final mReceiver:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;

.field public mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

.field public final synthetic this$0:Lcom/android/server/sepunion/SemGoodCatchService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    const-string v0, "FeatureDetectAds"

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mActiveState:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mPreviousUid:I

    iput v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mForegroundUid:I

    new-instance v1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;

    invoke-direct {v1, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;-><init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)V

    iput-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mProcessObserver:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;

    new-instance v1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;

    invoke-direct {v1, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;-><init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)V

    iput-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mReceiver:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;

    new-instance v1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$3;

    invoke-direct {v1, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$3;-><init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)V

    iput-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mOnStateListener:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$3;

    iget-object v1, p1, Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v1, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    iget-object p1, p1, Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$4;

    invoke-direct {v2, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$4;-><init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)V

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo p0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final process(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mReceiver:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    iget-object v2, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mProcessObserver:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, v1, Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    return-void

    :cond_0
    iget-object p0, v1, Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget p1, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    const-string/jumbo p1, "SemGoodCatchService"

    const-string v0, "Exception - ProcessObserver"

    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
