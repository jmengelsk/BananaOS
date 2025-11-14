.class public final Lcom/android/server/sepunion/cover/CoverServiceManager$2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

.field public final synthetic val$type:I


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverServiceManager;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iput p2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->val$type:I

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 15

    const-string/jumbo v0, "bound:cn="

    sget-object v1, Lcom/android/server/sepunion/cover/CoverServiceManager;->LED_COVER:Landroid/content/ComponentName;

    const-string v1, "CoverManager_CoverServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onServiceConnected : name = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", binder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget-object v1, v1, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_26
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v2, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->findActiveServiceByComponentLocked(Landroid/content/ComponentName;)Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    move-result-object v2

    if-eqz v2, :cond_38

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v3, v2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->removeCoverServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)V

    goto :goto_38

    :catchall_34
    move-exception v0

    move-object p0, v0

    goto/16 :goto_b2

    :cond_38
    :goto_38
    sget-object v2, Lcom/android/server/sepunion/cover/CoverServiceManager;->SYSTEM_UI_COVER:Landroid/content/ComponentName;

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {v2, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$mfindCoverServiceByComponentLocked(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4d

    :cond_49
    move-object v9, p0

    move-object v6, p1

    move-object v8, p2

    goto :goto_5c

    :cond_4d
    new-instance v4, Lcom/android/server/sepunion/cover/CoverServiceManager$SViewCoverBaseServiceInfo;

    iget-object v5, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget v7, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->val$type:I

    sget-object v10, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object v9, p0

    move-object v6, p1

    move-object v8, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;-><init>(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/IBinder;Lcom/android/server/sepunion/cover/CoverServiceManager$2;Landroid/os/UserHandle;)V

    goto :goto_74

    :goto_5c
    new-instance v5, Lcom/android/server/sepunion/cover/CoverServiceManager$SemCoverServiceInfo;

    move-object v7, v6

    iget-object v6, v9, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    move-object v10, v9

    move-object v9, v8

    iget v8, v10, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->val$type:I

    new-instance v11, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    invoke-direct {v11, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct/range {v5 .. v11}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;-><init>(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/IBinder;Lcom/android/server/sepunion/cover/CoverServiceManager$2;Landroid/os/UserHandle;)V

    move-object v6, v7

    move-object v9, v10

    move-object v4, v5

    :goto_74
    iget-object p0, v9, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",type="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v9, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->val$type:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->updateBindHistoryLocked(Ljava/lang/String;)V

    iget-object p0, v9, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mActiveServices:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, v9, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget-object p1, v4, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->addBindingServiceLocked(Landroid/content/ComponentName;)V

    iget-object p0, v9, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-exit v1
    :try_end_a3
    .catchall {:try_start_26 .. :try_end_a3} :catchall_34

    invoke-virtual {v4}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->systemReady()V

    iget-object p0, v9, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverStateProvider:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->getCoverStateFromCoverServiceManager()Lcom/samsung/android/cover/CoverState;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    return-void

    :goto_b2
    :try_start_b2
    monitor-exit v1
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_34

    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 9

    const-string/jumbo v0, "onServiceDisconnected : give up to connect cover service, "

    const-string/jumbo v1, "onServiceDisconnected : retry to connect cover service, "

    const-string/jumbo v2, "unbound:cn="

    sget-object v3, Lcom/android/server/sepunion/cover/CoverServiceManager;->LED_COVER:Landroid/content/ComponentName;

    const-string v3, "CoverManager_CoverServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onServiceDisconnected : name = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget-object v3, v3, Lcom/android/server/sepunion/cover/CoverServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_24
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v4, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->findActiveServiceByComponentLocked(Landroid/content/ComponentName;)Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    move-result-object v4

    if-eqz v4, :cond_cf

    iget-object v5, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v5, v4}, Lcom/android/server/sepunion/cover/CoverServiceManager;->removeCoverServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)V

    iget-object v5, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",type="

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->val$type:I

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->updateBindHistoryLocked(Ljava/lang/String;)V

    iget p1, v4, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->type:I

    const/4 v2, 0x7

    if-eq p1, v2, :cond_55

    const/16 v2, 0xe

    if-ne p1, v2, :cond_77

    :cond_55
    sget-boolean p1, Lcom/android/server/sepunion/cover/CoverServiceManager;->SUPPORT_FLIP_SUITCASE:Z

    if-eqz p1, :cond_77

    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget-object p1, p1, Lcom/android/server/sepunion/cover/CoverServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string/jumbo v2, "com.sec.feature.nfc_suitled_authentication_cover"

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_77

    sget-object p1, Lcom/android/server/sepunion/cover/CoverServiceManager;->LED_SUIT:Landroid/content/ComponentName;

    iget-object v2, v4, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_81

    goto :goto_8d

    :catchall_75
    move-exception p0

    goto :goto_d1

    :cond_77
    sget-object p1, Lcom/android/server/sepunion/cover/CoverServiceManager;->LED_COVER:Landroid/content/ComponentName;

    iget-object v2, v4, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8d

    :cond_81
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget-object v2, v4, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->component:Landroid/content/ComponentName;

    invoke-static {p1, v2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$mfindCoverServiceByComponentLocked(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;)I

    move-result p1

    iget v2, v4, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->type:I

    if-ne p1, v2, :cond_cf

    :cond_8d
    :goto_8d
    iget p1, v4, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->disconnectionCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v4, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->disconnectionCount:I

    const/4 v2, 0x5

    if-ge p1, v2, :cond_bc

    const-string p1, "CoverManager_CoverServiceManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v4, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$2;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mHandler:Lcom/android/server/sepunion/cover/CoverServiceManager$H;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_cf

    :cond_bc
    const-string p0, "CoverManager_CoverServiceManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v4, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->type:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cf
    :goto_cf
    monitor-exit v3

    return-void

    :goto_d1
    monitor-exit v3
    :try_end_d2
    .catchall {:try_start_24 .. :try_end_d2} :catchall_75

    throw p0
.end method
