.class public final Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;
.super Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SemGoodCatchService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    const-string v0, "FeatureSetting"

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mOn:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.app.goodcatch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    iget-object p1, p1, Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting$1;

    invoke-direct {v1, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting$1;-><init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
