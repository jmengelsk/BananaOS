.class public final Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const/4 p1, 0x0

    if-eqz p2, :cond_18

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    goto :goto_1a

    :cond_16
    move-object p2, p1

    goto :goto_1a

    :cond_18
    move-object p2, p1

    move-object v0, p2

    :goto_1a
    sget v1, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    const-string/jumbo v1, "SemGoodCatchService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "intent received, action:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    const-string/jumbo v0, "com.samsung.android.app.goodcatch"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    const-string/jumbo v0, "SemGoodCatchService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " removed"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "SemGoodCatchService"

    const-string/jumbo v1, "reset"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p2, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    iget-object p2, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    iget-object p2, p2, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    iget-object v0, p2, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mOn:Z

    iput-object p1, v0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mUri:Landroid/net/Uri;

    iget-object p1, p2, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchClients:Ljava/util/HashMap;

    monitor-enter p1

    :try_start_7b
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchClients:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_89
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;

    iget-object v0, p2, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mFunctions:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_98
    .catchall {:try_start_7b .. :try_end_98} :catchall_be

    :try_start_98
    iget-object v1, p2, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->mFunctions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ba

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->off(Ljava/lang/String;)V

    goto :goto_a2

    :catchall_b8
    move-exception p0

    goto :goto_bc

    :cond_ba
    monitor-exit v0

    goto :goto_89

    :goto_bc
    monitor-exit v0
    :try_end_bd
    .catchall {:try_start_98 .. :try_end_bd} :catchall_b8

    :try_start_bd
    throw p0

    :catchall_be
    move-exception p0

    goto :goto_c2

    :cond_c0
    monitor-exit p1

    return-void

    :goto_c2
    monitor-exit p1
    :try_end_c3
    .catchall {:try_start_bd .. :try_end_c3} :catchall_be

    throw p0

    :cond_c4
    return-void
.end method
