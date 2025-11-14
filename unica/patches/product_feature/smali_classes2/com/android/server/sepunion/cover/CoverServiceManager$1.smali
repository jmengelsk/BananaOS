.class public final Lcom/android/server/sepunion/cover/CoverServiceManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_a

    :cond_1
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget-object v3, v3, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverStateProvider:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {v3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverStateFromCoverServiceManager()Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v1, :cond_2

    if-eqz v2, :cond_d

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const v1, 0xc0084

    const/4 v5, 0x1

    if-nez v2, :cond_7

    if-eqz p2, :cond_3

    const-string/jumbo v2, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "CoverManager_CoverServiceManager"

    const-string/jumbo v6, "addCoverService : "

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.cover.CoverService"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p2, Lcom/android/server/sepunion/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {p2, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->getVerifiedCoverService(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    move v6, v4

    move v7, v6

    :goto_0
    if-ge v6, v2, :cond_a

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    iget-object v9, p2, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v10, p2, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    if-nez v10, :cond_5

    iget-object v7, p2, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    invoke-virtual {v7, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v7, v5

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_5
    const-string v10, "CoverManager_CoverServiceManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "addCoverService : Cover Type("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") is already added"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :goto_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_6
    :goto_3
    move v7, v4

    goto :goto_7

    :cond_7
    :goto_4
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "CoverManager_CoverServiceManager"

    const-string/jumbo v6, "updateCoverService : "

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.cover.CoverService"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p2, Lcom/android/server/sepunion/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {p2, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->getVerifiedCoverService(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    iget-object v6, p2, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    move v7, v4

    :goto_5
    if-ge v7, v2, :cond_9

    :try_start_1
    iget-object v8, p2, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverServices:Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_6

    :cond_9
    monitor-exit v6

    move v7, v5

    goto :goto_7

    :goto_6
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_a
    :goto_7
    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p2

    const/16 v1, 0xd

    if-ne p2, v1, :cond_b

    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    invoke-virtual {p2, v1, v4}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverService(IZ)V

    goto :goto_9

    :cond_b
    if-eqz v7, :cond_d

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result p2

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    invoke-virtual {p2, v1, v5, v4}, Lcom/android/server/sepunion/cover/CoverServiceManager;->getCoverServiceNameLocked(IZZ)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_c

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v1, p2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->findActiveServiceByComponentLocked(Landroid/content/ComponentName;)Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    move-result-object v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget-object v2, v1, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget-object v1, v1, Lcom/android/server/sepunion/cover/CoverServiceManager;->mBindingTimestamp:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v1, p2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->removeBindingServiceLocked(Landroid/content/ComponentName;)V

    goto :goto_8

    :catchall_2
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :cond_c
    :goto_8
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    invoke-virtual {p2, v1, v4}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverService(IZ)V

    :cond_d
    :goto_9
    const-string/jumbo p2, "com.android.systemui"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    const-string/jumbo p2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p1

    invoke-virtual {p0, p1, v4}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverService(IZ)V

    :cond_e
    :goto_a
    return-void
.end method
