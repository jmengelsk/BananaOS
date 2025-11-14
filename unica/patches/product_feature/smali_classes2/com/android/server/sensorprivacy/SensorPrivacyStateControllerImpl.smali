.class public final Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sInstance:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

.field public static sInstance$1:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;


# instance fields
.field public final mAllSensorStateController:Lcom/android/server/sensorprivacy/AllSensorStateController;

.field public mListener:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda2;

.field public mListenerHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

.field public final mLock:Ljava/lang/Object;

.field public final mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;


# direct methods
.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/sensorprivacy/AllSensorStateController;->sInstance:Lcom/android/server/sensorprivacy/AllSensorStateController;

    if-nez v0, :cond_e

    new-instance v0, Lcom/android/server/sensorprivacy/AllSensorStateController;

    invoke-direct {v0}, Lcom/android/server/sensorprivacy/AllSensorStateController;-><init>()V

    sput-object v0, Lcom/android/server/sensorprivacy/AllSensorStateController;->sInstance:Lcom/android/server/sensorprivacy/AllSensorStateController;

    :cond_e
    sget-object v0, Lcom/android/server/sensorprivacy/AllSensorStateController;->sInstance:Lcom/android/server/sensorprivacy/AllSensorStateController;

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mAllSensorStateController:Lcom/android/server/sensorprivacy/AllSensorStateController;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mLock:Ljava/lang/Object;

    new-instance v2, Lcom/android/server/sensorprivacy/PersistedState;

    invoke-direct {v2}, Lcom/android/server/sensorprivacy/PersistedState;-><init>()V

    iput-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    monitor-enter v1

    :try_start_21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/sensorprivacy/AllSensorStateController$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v0}, Lcom/android/server/sensorprivacy/AllSensorStateController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iget-boolean v0, v0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->schedulePersistLocked()V

    monitor-exit v1

    return-void

    :catchall_40
    move-exception p0

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_21 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public static sendSetStateCallback(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;Z)V
    .registers 4

    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public final atomic(Ljava/lang/Runnable;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public final dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .registers 20

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, v1, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_5c

    iget-object v4, v1, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    iget v4, v4, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mType:I

    iget-object v5, v1, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    iget v5, v5, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mUserId:I

    iget-object v8, v1, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    iget v8, v8, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mSensor:I

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    if-nez v9, :cond_45

    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v6, v5, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_45
    new-instance v5, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v10, v1, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v10, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/sensorprivacy/SensorState;

    invoke-direct {v5, v4, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_5c
    const-class v1, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "storage_implementation"

    const-wide v3, 0x10900000004L

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_72
    if-ge v9, v8, :cond_11f

    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    const-string/jumbo v2, "users"

    const-wide v3, 0x20b00000003L

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v10

    const-string/jumbo v2, "user_id"

    const-wide v12, 0x10500000001L

    invoke-virtual {v0, v2, v12, v13, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v15

    const/4 v1, 0x0

    :goto_9b
    if-ge v1, v15, :cond_114

    invoke-virtual {v14, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v14, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v14, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/sensorprivacy/SensorState;

    const-string/jumbo v5, "sensors"

    move/from16 v16, v8

    const-wide v7, 0x20b00000004L

    invoke-virtual {v0, v5, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v7

    const-string/jumbo v5, "sensor"

    invoke-virtual {v0, v5, v12, v13, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string/jumbo v2, "toggles"

    const-wide v12, 0x20b00000002L

    invoke-virtual {v0, v2, v12, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v12

    const-string/jumbo v2, "toggle_type"

    move-object/from16 v17, v6

    const-wide v5, 0x10e00000004L

    invoke-virtual {v0, v2, v5, v6, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    iget v2, v4, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    const-string/jumbo v3, "state_type"

    const-wide v5, 0x10e00000005L

    invoke-virtual {v0, v3, v5, v6, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    iget-wide v4, v4, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    move v2, v1

    const-string/jumbo v1, "last_change"

    move v6, v2

    const-wide v2, 0x10300000003L

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v1, v6, 0x1

    move/from16 v8, v16

    move-object/from16 v6, v17

    const-wide v12, 0x10500000001L

    goto :goto_9b

    :cond_114
    move-object/from16 v17, v6

    move/from16 v16, v8

    invoke-virtual {v0, v10, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_72

    :cond_11f
    return-void
.end method

.method public final getState(III)Lcom/android/server/sensorprivacy/SensorState;
    .registers 6

    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    iget-object p0, p0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;-><init>(III)V

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/sensorprivacy/SensorState;

    if-eqz p0, :cond_1a

    new-instance p1, Lcom/android/server/sensorprivacy/SensorState;

    invoke-direct {p1, p0}, Lcom/android/server/sensorprivacy/SensorState;-><init>(Lcom/android/server/sensorprivacy/SensorState;)V

    goto :goto_20

    :cond_1a
    new-instance p1, Lcom/android/server/sensorprivacy/SensorState;

    const/4 p0, 0x2

    invoke-direct {p1, p0}, Lcom/android/server/sensorprivacy/SensorState;-><init>(I)V

    :goto_20
    monitor-exit v0

    return-object p1

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public final notifyStateChangeLocked(IIILcom/android/server/sensorprivacy/SensorState;)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mListenerHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    if-eqz v0, :cond_25

    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mListener:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda2;

    if-eqz v2, :cond_25

    new-instance v1, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/android/server/sensorprivacy/SensorState;

    invoke-direct {v6, p4}, Lcom/android/server/sensorprivacy/SensorState;-><init>(Lcom/android/server/sensorprivacy/SensorState;)V

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_25
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->schedulePersistLocked()V

    return-void
.end method

.method public final schedulePersistLocked()V
    .registers 8

    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mPersistedState:Lcom/android/server/sensorprivacy/PersistedState;

    iget-object v0, p0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_36

    new-instance v3, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    iget-object v4, p0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    iget v5, v4, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mType:I

    iget v6, v4, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mUserId:I

    iget v4, v4, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mSensor:I

    invoke-direct {v3, v5, v6, v4}, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;-><init>(III)V

    new-instance v4, Lcom/android/server/sensorprivacy/SensorState;

    iget-object v5, p0, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sensorprivacy/SensorState;

    invoke-direct {v4, v5}, Lcom/android/server/sensorprivacy/SensorState;-><init>(Lcom/android/server/sensorprivacy/SensorState;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_36
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/server/sensorprivacy/PersistedState$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v2, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
