.class public final Lcom/android/server/usage/AppStandbyController$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/usage/AppStandbyController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usage/AppStandbyController;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    const/4 p1, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->$r8$classId:I

    packed-switch v2, :pswitch_data_18c

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_192

    goto :goto_3a

    :sswitch_17
    const-string/jumbo v2, "android.os.action.CHARGING"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_21

    goto :goto_3a

    :cond_21
    const/4 p1, 0x2

    goto :goto_3a

    :sswitch_23
    const-string/jumbo v2, "android.os.action.DISCHARGING"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2d

    goto :goto_3a

    :cond_2d
    move p1, v0

    goto :goto_3a

    :sswitch_2f
    const-string/jumbo v2, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_39

    goto :goto_3a

    :cond_39
    move p1, v1

    :goto_3a
    packed-switch p1, :pswitch_data_1a0

    goto :goto_5a

    :pswitch_3e  #0x2
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {p0, v0}, Lcom/android/server/usage/AppStandbyController;->setChargingState(Z)V

    goto :goto_5a

    :pswitch_44  #0x1
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {p0, v1}, Lcom/android/server/usage/AppStandbyController;->setChargingState(Z)V

    goto :goto_5a

    :pswitch_4a  #0x0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    if-eqz p1, :cond_5a

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    new-instance p2, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v1}, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usage/AppStandbyController;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5a
    :goto_5a
    return-void

    :pswitch_5b  #0x0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v6

    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7d

    const-string/jumbo v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c9

    :cond_7d
    const-string/jumbo v3, "android.intent.extra.changed_component_name_list"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_91

    array-length v4, v3

    if-ne v4, v0, :cond_b3

    aget-object v3, v3, v1

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    :cond_91
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v3}, Lcom/android/server/usage/AppStandbyController;->clearCarrierPrivilegedApps()V

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-boolean v4, v3, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    if-nez v4, :cond_9d

    goto :goto_b3

    :cond_9d
    :try_start_9d
    iget-object v4, v3, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v7, 0x1c0200

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/usage/AppStandbyController;->maybeUpdateHeadlessSystemAppCache(Landroid/content/pm/PackageInfo;)V
    :try_end_a9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9d .. :try_end_a9} :catch_aa

    goto :goto_b3

    :catch_aa
    iget-object v4, v3, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    monitor-enter v4

    :try_start_ad
    iget-object v3, v3, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_b3
    .catchall {:try_start_ad .. :try_end_b3} :catchall_188

    :cond_b3
    :goto_b3
    const-string/jumbo v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c9

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v3, v3, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v6, p1, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :cond_c9
    const-string/jumbo v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_db

    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_164

    :cond_db
    const-string/jumbo v3, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_eb

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, v5, v6}, Lcom/android/server/usage/AppStandbyController;->maybeUnrestrictBuggyApp(Ljava/lang/String;I)V

    goto/16 :goto_164

    :cond_eb
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, v5, v6}, Lcom/android/server/usage/AppStandbyController;->clearAppIdleForPackage(Ljava/lang/String;I)V

    goto/16 :goto_164

    :cond_fb
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, v1, Lcom/android/server/usage/AppStandbyController;->mAppsToRestoreToRare:Landroid/util/SparseSetArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v1

    if-nez v1, :cond_132

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, v1, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    monitor-enter v1

    :try_start_10a
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v3, v3, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v3, v6}, Lcom/android/server/usage/AppIdleHistory;->readRestoreToRareAppsList(I)Landroid/util/ArraySet;

    move-result-object v3

    if-eqz v3, :cond_12e

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v4, v4, Lcom/android/server/usage/AppStandbyController;->mAppsToRestoreToRare:Landroid/util/SparseSetArray;

    invoke-virtual {v4, v6, v3}, Landroid/util/SparseSetArray;->addAll(ILandroid/util/ArraySet;)V

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v3, v3, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    new-instance v4, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda2;

    invoke-direct {v4, v6, v0, p0}, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda2;-><init>(IILjava/lang/Object;)V

    const-wide/32 v7, 0xa4cb800

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_12e

    :catchall_12b
    move-exception v0

    move-object p0, v0

    goto :goto_130

    :cond_12e
    :goto_12e
    monitor-exit v1

    goto :goto_132

    :goto_130
    monitor-exit v1
    :try_end_131
    .catchall {:try_start_10a .. :try_end_131} :catchall_12b

    throw p0

    :cond_132
    :goto_132
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mAppsToRestoreToRare:Landroid/util/SparseSetArray;

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_164

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, v4, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/usage/AppStandbyController;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_15d

    const/4 v11, 0x0

    move-wide v8, v7

    const/16 v7, 0x102

    move-object v10, v5

    move v5, v6

    const/16 v6, 0x28

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(IIIJLjava/lang/String;Z)V

    move v6, v5

    move-object v5, v10

    :cond_15d
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mAppsToRestoreToRare:Landroid/util/SparseSetArray;

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    :cond_164
    :goto_164
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mSystemExemptionAppOpMode:Landroid/util/SparseIntArray;

    monitor-enter v1

    :try_start_169
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_184

    const-string/jumbo v0, "android.intent.extra.UID"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemExemptionAppOpMode:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_184

    :catchall_181
    move-exception v0

    move-object p0, v0

    goto :goto_186

    :cond_184
    :goto_184
    monitor-exit v1

    return-void

    :goto_186
    monitor-exit v1
    :try_end_187
    .catchall {:try_start_169 .. :try_end_187} :catchall_181

    throw p0

    :catchall_188
    move-exception v0

    move-object p0, v0

    :try_start_18a
    monitor-exit v4
    :try_end_18b
    .catchall {:try_start_18a .. :try_end_18b} :catchall_188

    throw p0

    :pswitch_data_18c
    .packed-switch 0x0
        :pswitch_5b  #00000000
    .end packed-switch

    :sswitch_data_192
    .sparse-switch
        -0x3e97d1f -> :sswitch_2f
        -0x3465cce -> :sswitch_23
        0x388694fe -> :sswitch_17
    .end sparse-switch

    :pswitch_data_1a0
    .packed-switch 0x0
        :pswitch_4a  #00000000
        :pswitch_44  #00000001
        :pswitch_3e  #00000002
    .end packed-switch
.end method
