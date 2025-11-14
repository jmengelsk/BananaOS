.class public final Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;
.super Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mOnStateListener:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$1;

.field public final synthetic this$0:Lcom/android/server/sepunion/SemGoodCatchService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    const-string v0, "FeatureWakeUp"

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$1;-><init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->mOnStateListener:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$1;

    const-string/jumbo v0, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    iget-object p1, p1, Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$2;

    invoke-direct {v1, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$2;-><init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
