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
    .registers 5

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
    .registers 14

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_8
    if-ge v2, v0, :cond_25

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    if-eqz v3, :cond_8

    iget-object v3, v3, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-interface {p1, v3}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string p0, "CoverManager_StateNotifier"

    const-string/jumbo p1, "addListenerToListLocked : duplicated listener handle"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_25
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

    :try_start_36
    invoke-interface {v4, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_3f

    :catch_3a
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_3f
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .registers 10

    const-string v0, "  Live listeners ("

    const-string v1, " Current StateNotifier state:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_a
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

    :cond_2c
    :goto_2c
    if-ge v4, v2, :cond_6b

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    if-eqz v5, :cond_2c

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

    goto :goto_2c

    :catchall_68
    move-exception p0

    goto/16 :goto_166

    :cond_6b
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_71
    .catchall {:try_start_a .. :try_end_71} :catchall_68

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_74
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

    :cond_9a
    :goto_9a
    if-ge v4, v2, :cond_d9

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    if-eqz v5, :cond_9a

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

    goto :goto_9a

    :catchall_d6
    move-exception p0

    goto/16 :goto_164

    :cond_d9
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_df
    .catchall {:try_start_74 .. :try_end_df} :catchall_d6

    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_e2
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

    :cond_11d
    :goto_11d
    if-ge v3, v0, :cond_15b

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;

    if-eqz v2, :cond_11d

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

    goto :goto_11d

    :catchall_159
    move-exception p0

    goto :goto_162

    :cond_15b
    const-string p0, "  "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :goto_162
    monitor-exit v1
    :try_end_163
    .catchall {:try_start_e2 .. :try_end_163} :catchall_159

    throw p0

    :goto_164
    :try_start_164
    monitor-exit v0
    :try_end_165
    .catchall {:try_start_164 .. :try_end_165} :catchall_d6

    throw p0

    :goto_166
    :try_start_166
    monitor-exit v1
    :try_end_167
    .catchall {:try_start_166 .. :try_end_167} :catchall_68

    throw p0
.end method

.method public final enableLcdOffByCoverIfPossibleLocked()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mCoverOpen:Z

    if-nez v1, :cond_26

    iget v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mCoverType:I

    if-nez v1, :cond_26

    const-string v1, "CoverManager_"

    const-string/jumbo v2, "goToSleep by cover close : enableLcdOff"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/16 v4, 0x14

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/os/PowerManager;->goToSleep(JII)V

    :cond_26
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByAppListener:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    if-eqz v1, :cond_5e

    iget p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mCoverType:I

    const/4 v2, 0x7

    if-eq p0, v2, :cond_37

    const/16 v2, 0xb

    if-eq p0, v2, :cond_37

    const/16 v2, 0xe

    if-ne p0, v2, :cond_5e

    :cond_37
    iget-object p0, v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    const/4 v2, 0x0

    iget-object v3, v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mStateNotifier:Lcom/android/server/sepunion/cover/StateNotifier;

    if-eqz p0, :cond_55

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "event_type"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "lcd_off_disabled_by_cover"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v4}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->sendSystemEvent(Landroid/os/Bundle;)V

    iput-object v2, v3, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByAppListener:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_55
    iget-object p0, v1, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mGenericCoverServiceController:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    if-eqz p0, :cond_5e

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->setLcdOffDisabledByCover(Z)V

    iput-object v2, v3, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByAppListener:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    :cond_5e
    return-void
.end method

.method public final updateCoverAttachState(IZZ)V
    .registers 8

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

    if-nez p3, :cond_8f

    if-eqz p1, :cond_80

    const/16 p3, 0xb

    if-eq p1, p3, :cond_74

    if-eq p1, v3, :cond_61

    if-eq p1, v2, :cond_55

    packed-switch p1, :pswitch_data_cc

    :cond_23
    move p1, v1

    goto :goto_8b

    :pswitch_25  #0x11
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCameraViewCover:Z

    goto :goto_8b

    :pswitch_31  #0x10
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportMiniSviewWalletCover:Z

    goto :goto_8b

    :pswitch_3d  #0xf
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearSideViewCover:Z

    goto :goto_8b

    :pswitch_49  #0xe
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportLEDBackCover:Z

    goto :goto_8b

    :cond_55
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCover:Z

    goto :goto_8b

    :cond_61
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNfcLedCover:Z

    if-eqz p1, :cond_23

    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    if-eqz p1, :cond_23

    move p1, v0

    goto :goto_8b

    :cond_74
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNeonCover:Z

    goto :goto_8b

    :cond_80
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    :goto_8b
    if-eqz p1, :cond_8e

    goto :goto_8f

    :cond_8e
    return-void

    :cond_8f
    :goto_8f
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_9c

    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_9c
    sget-boolean p1, Lcom/android/server/sepunion/cover/CoverManagerUtils;->isSupportWirelessCharge:Z

    if-eqz p1, :cond_c1

    iget p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mCoverType:I

    if-eq p1, v3, :cond_b8

    if-eq p1, v2, :cond_b8

    const/16 p3, 0xe

    if-eq p1, p3, :cond_b8

    const/16 p3, 0xf

    if-eq p1, p3, :cond_b8

    const/16 p3, 0x10

    if-eq p1, p3, :cond_b8

    if-eqz p1, :cond_b8

    const/16 p3, 0x11

    if-ne p1, p3, :cond_be

    :cond_b8
    if-eqz p2, :cond_be

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->fileWriteInt(I)V

    goto :goto_c1

    :cond_be
    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->fileWriteInt(I)V

    :cond_c1
    :goto_c1
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHandler:Lcom/android/server/sepunion/cover/StateNotifier$H;

    invoke-virtual {p0, v0, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    nop

    :pswitch_data_cc
    .packed-switch 0xe
        :pswitch_49  #0000000e
        :pswitch_3d  #0000000f
        :pswitch_31  #00000010
        :pswitch_25  #00000011
    .end packed-switch
.end method

.method public final updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V
    .registers 9

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mCoverOpen:Z

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v4, v2, :cond_28

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    invoke-virtual {v5, p1}, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->onCoverSwitchStateChanged(Lcom/samsung/android/cover/CoverState;)V

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->onCoverSwitchStateChanged(Z)V

    goto :goto_11

    :catchall_26
    move-exception p0

    goto :goto_44

    :cond_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_26

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_36
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHandler:Lcom/android/server/sepunion/cover/StateNotifier$H;

    invoke-virtual {p0, v3, v0, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :goto_44
    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_26

    throw p0
.end method

.method public final updatePowerState(IZ)V
    .registers 7

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

    if-eqz p1, :cond_c3

    const/16 v2, 0xb

    if-eq p1, v2, :cond_a4

    const/16 v2, 0x64

    if-eq p1, v2, :cond_c3

    const/4 v2, 0x7

    if-eq p1, v2, :cond_58

    const/16 p2, 0x8

    if-eq p1, p2, :cond_39

    goto/16 :goto_189

    :cond_39
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportClearCover:Z

    if-eqz p1, :cond_189

    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_189

    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, v1, v1}, Landroid/os/PowerManager;->userActivity(JII)V

    return-void

    :cond_58
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNfcLedCover:Z

    if-eqz p1, :cond_a3

    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    if-eqz p1, :cond_a3

    if-eqz p2, :cond_8a

    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_7d

    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, v1, v1}, Landroid/os/PowerManager;->userActivity(JII)V

    return-void

    :cond_7d
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    const-string/jumbo v1, "updatePowerState"

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/os/PowerManager;->semWakeUp(JILjava/lang/String;)V

    return-void

    :cond_8a
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    if-eqz p1, :cond_189

    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_91
    iget-object p2, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_9f

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/StateNotifier;->enableLcdOffByCoverIfPossibleLocked()V

    goto :goto_9f

    :catchall_9d
    move-exception p0

    goto :goto_a1

    :cond_9f
    :goto_9f
    monitor-exit p1

    return-void

    :goto_a1
    monitor-exit p1
    :try_end_a2
    .catchall {:try_start_91 .. :try_end_a2} :catchall_9d

    throw p0

    :cond_a3
    return-void

    :cond_a4
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportNeonCover:Z

    if-eqz p1, :cond_189

    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_189

    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, v1, v1}, Landroid/os/PowerManager;->userActivity(JII)V

    return-void

    :cond_c3
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/server/sepunion/cover/Feature;->sIsSupportFlipCover:Z

    if-eqz p1, :cond_189

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result p1

    if-nez p1, :cond_189

    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_189

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result p1

    if-eqz p1, :cond_e6

    goto/16 :goto_189

    :cond_e6
    if-eqz p2, :cond_10e

    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_fa

    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3, v1, v1}, Landroid/os/PowerManager;->userActivity(JII)V

    goto :goto_106

    :cond_fa
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string/jumbo p2, "updatePowerState"

    invoke-virtual {p1, v1, v2, v0, p2}, Landroid/os/PowerManager;->semWakeUp(JILjava/lang/String;)V

    :goto_106
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mGoToSleepRunnable:Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;

    if-eqz p1, :cond_189

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mGoToSleepRunnable:Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;

    return-void

    :cond_10e
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    const/16 p2, 0x14

    if-eqz p1, :cond_16c

    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_117
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_155

    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_125
    if-ge v1, p2, :cond_168

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

    goto :goto_125

    :catchall_153
    move-exception p0

    goto :goto_16a

    :cond_155
    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    const-string v0, "CoverManager_"

    const-string/jumbo v2, "goToSleep by cover close : mLcdOffDisableListeners is empty"

    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, p2, v1}, Landroid/os/PowerManager;->goToSleep(JII)V

    :cond_168
    monitor-exit p1

    return-void

    :goto_16a
    monitor-exit p1
    :try_end_16b
    .catchall {:try_start_117 .. :try_end_16b} :catchall_153

    throw p0

    :cond_16c
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mBootComplete:Z

    if-eqz p1, :cond_182

    const-string p1, "CoverManager_"

    const-string/jumbo v0, "goToSleep by cover close : mLcdOffDisabledByApp is false"

    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, p2, v1}, Landroid/os/PowerManager;->goToSleep(JII)V

    return-void

    :cond_182
    new-instance p1, Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/cover/StateNotifier;)V

    iput-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mGoToSleepRunnable:Lcom/android/server/sepunion/cover/StateNotifier$$ExternalSyntheticLambda0;

    :cond_189
    :goto_189
    return-void
.end method
