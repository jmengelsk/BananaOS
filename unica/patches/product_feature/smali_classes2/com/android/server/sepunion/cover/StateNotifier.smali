.class public final Lcom/android/server/sepunion/cover/StateNotifier;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mBootComplete:Z

.field public final mContext:Landroid/content/Context;

.field public mCoverOpen:Z

.field public mCoverType:I

.field public mGoToSleepRunnable:Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;

.field public final mHandler:Lcom/android/server/sepunion/cover/StateNotifier$H;

.field public final mHighPriorityListeners:Ljava/util/ArrayList;

.field public final mLcdOffDisableListeners:Ljava/util/ArrayList;

.field public mLcdOffDisabledByApp:Z

.field public mLcdOffDisabledByAppListener:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

.field public final mListeners:Ljava/util/ArrayList;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mSendCoverAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mCoverType:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mCoverOpen:Z

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mBootComplete:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mGoToSleepRunnable:Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;

    iput-object p2, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    new-instance v1, Lcom/android/server/sepunion/cover/StateNotifier$H;

    invoke-direct {v1, p0, p1}, Lcom/android/server/sepunion/cover/StateNotifier$H;-><init>(Lcom/android/server/sepunion/cover/StateNotifier;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHandler:Lcom/android/server/sepunion/cover/StateNotifier$H;

    const/4 p1, 0x1

    const-string v1, "CoverSwitchState"

    invoke-virtual {p2, p1, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string v1, "CoverAttachState"

    invoke-virtual {p2, p1, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method


# virtual methods
.method public final addListenerToListLocked(Landroid/os/IBinder;Landroid/content/ComponentName;ILjava/util/List;)V
    .locals 9

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-interface {p1, v3}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p0, "CoverManager_StateNotifier"

    const-string/jumbo p1, "addListenerToListLocked : duplicated listener handle"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v2, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;-><init>(Lcom/android/server/sepunion/cover/StateNotifier;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    :try_start_0
    invoke-interface {v4, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 8

    const-string v0, "  Live listeners ("

    const-string v1, " Current StateNotifier state:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "):"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    if-eqz v5, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " (pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->uid:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Live high priority listeners ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :cond_2
    :goto_1
    if-ge v4, v2, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    if-eqz v5, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " (pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->uid:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto/16 :goto_4

    :cond_3
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " LCD Off disabled by app: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " LCD Off listeners ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "):"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_4
    :goto_2
    if-ge v3, v0, :cond_5

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;

    if-eqz v2, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->uid:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :catchall_2
    move-exception p0

    goto :goto_3

    :cond_5
    const-string p0, "  "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :goto_5
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final enableLcdOffByCoverIfPossibleLocked()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mCoverOpen:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mCoverType:I

    if-nez v1, :cond_0

    const-string v1, "CoverManager_"

    const-string/jumbo v2, "goToSleep by cover close : enableLcdOff"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/16 v4, 0x14

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/os/PowerManager;->goToSleep(JII)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByAppListener:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-eqz v1, :cond_3

    iget p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mCoverType:I

    const/4 v2, 0x7

    if-eq p0, v2, :cond_1

    const/16 v2, 0xb

    if-eq p0, v2, :cond_1

    const/16 v2, 0xe

    if-ne p0, v2, :cond_3

    :cond_1
    iget-object p0, v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    const/4 v2, 0x0

    iget-object v3, v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    if-eqz p0, :cond_2

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "event_type"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "lcd_off_disabled_by_cover"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v4}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->sendSystemEvent(Landroid/os/Bundle;)V

    iput-object v2, v3, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByAppListener:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_2
    iget-object p0, v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->setLcdOffDisabledByCover(Z)V

    iput-object v2, v3, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByAppListener:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_3
    return-void
.end method

.method public final updateCoverAttachState(IZZ)V
    .locals 4

    iput p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mCoverType:I

    iput-boolean p3, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mCoverOpen:Z

    iget-object p3, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p3, Lcom/android/server/sepunion/cover/Feature;->sIsSupportSecureCover:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x7

    if-nez p3, :cond_6

    if-eqz p1, :cond_4

    const/16 p3, 0xb

    if-eq p1, p3, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    packed-switch p1, :pswitch_data_0

    :cond_0
    move p1, v1

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCameraViewCover:Z

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportMiniSviewWalletCover:Z

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearSideViewCover:Z

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDBackCover:Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCover:Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNfcLedCover:Z

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNeonCover:Z

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    :goto_0
    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_7
    sget-boolean p1, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isSupportWirelessCharge:Z

    if-eqz p1, :cond_a

    iget p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mCoverType:I

    if-eq p1, v3, :cond_8

    if-eq p1, v2, :cond_8

    const/16 p3, 0xe

    if-eq p1, p3, :cond_8

    const/16 p3, 0xf

    if-eq p1, p3, :cond_8

    const/16 p3, 0x10

    if-eq p1, p3, :cond_8

    if-eqz p1, :cond_8

    const/16 p3, 0x11

    if-ne p1, p3, :cond_9

    :cond_8
    if-eqz p2, :cond_9

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->fileWriteInt(I)V

    goto :goto_2

    :cond_9
    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->fileWriteInt(I)V

    :cond_a
    :goto_2
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHandler:Lcom/android/server/sepunion/cover/StateNotifier$H;

    invoke-virtual {p0, v0, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V
    .locals 7

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mCoverOpen:Z

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    invoke-virtual {v5, p1}, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->onCoverSwitchStateChanged(Lcom/samsung/android/cover/CoverState;)V

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->onCoverSwitchStateChanged(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHandler:Lcom/android/server/sepunion/cover/StateNotifier$H;

    invoke-virtual {p0, v3, v0, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final updatePowerState(IZ)V
    .locals 4

    const-string v0, "CoverManager_StateNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updatePowerState : isOpen="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->updateCoverState(Z)V

    const/16 v0, 0x67

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    const/16 v2, 0xb

    if-eq p1, v2, :cond_6

    const/16 v2, 0x64

    if-eq p1, v2, :cond_7

    const/4 v2, 0x7

    if-eq p1, v2, :cond_1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCover:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, v1, v1}, Landroid/os/PowerManager;->userActivity(JII)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNfcLedCover:Z

    if-eqz p1, :cond_5

    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    if-eqz p1, :cond_5

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, v1, v1}, Landroid/os/PowerManager;->userActivity(JII)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    const-string/jumbo v1, "updatePowerState"

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/os/PowerManager;->semWakeUp(JILjava/lang/String;)V

    return-void

    :cond_3
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/StateNotifier;->enableLcdOffByCoverIfPossibleLocked()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_4
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    return-void

    :cond_6
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNeonCover:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, v1, v1}, Landroid/os/PowerManager;->userActivity(JII)V

    return-void

    :cond_7
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    if-eqz p1, :cond_f

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_f

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result p1

    if-eqz p1, :cond_8

    goto/16 :goto_5

    :cond_8
    if-eqz p2, :cond_a

    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3, v1, v1}, Landroid/os/PowerManager;->userActivity(JII)V

    goto :goto_2

    :cond_9
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string/jumbo p2, "updatePowerState"

    invoke-virtual {p1, v1, v2, v0, p2}, Landroid/os/PowerManager;->semWakeUp(JILjava/lang/String;)V

    :goto_2
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mGoToSleepRunnable:Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;

    if-eqz p1, :cond_f

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mGoToSleepRunnable:Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;

    return-void

    :cond_a
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    const/16 p2, 0x14

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_3
    if-ge v1, p2, :cond_c

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    check-cast v0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cover close: goToSleep disabled by: PID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " UID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->uid:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CoverManager_StateNotifier"

    invoke-static {v2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_b
    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    const-string v0, "CoverManager_"

    const-string/jumbo v2, "goToSleep by cover close : mLcdOffDisableListeners is empty"

    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, p2, v1}, Landroid/os/PowerManager;->goToSleep(JII)V

    :cond_c
    monitor-exit p1

    return-void

    :goto_4
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_d
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mBootComplete:Z

    if-eqz p1, :cond_e

    const-string p1, "CoverManager_"

    const-string/jumbo v0, "goToSleep by cover close : mLcdOffDisabledByApp is false"

    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, p2, v1}, Landroid/os/PowerManager;->goToSleep(JII)V

    return-void

    :cond_e
    new-instance p1, Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/cover/StateNotifier;)V

    iput-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mGoToSleepRunnable:Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;

    :cond_f
    :goto_5
    return-void
.end method
