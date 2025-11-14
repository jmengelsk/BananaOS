.class public final Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;


# instance fields
.field public final mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

.field public mEnergyConsumerIds:[I

.field public final mEnergyConsumerType:I

.field public mFirstCollection:Z

.field public mIsInitialized:Z

.field public mLastConsumedEnergyUws:[J

.field public final mLastConsumerEnergyPerUid:Landroid/util/SparseLongArray;

.field public mLastVoltageMv:I

.field public final mPerUidAttributionSupported:Z

.field public final synthetic this$0:Lcom/android/server/power/stats/PowerStatsCollector;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->this$0:Lcom/android/server/power/stats/PowerStatsCollector;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mFirstCollection:Z

    iput-object p2, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerType:I

    filled-new-array {p3}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerIds:[I

    iput-boolean p1, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mPerUidAttributionSupported:Z

    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastConsumerEnergyPerUid:Landroid/util/SparseLongArray;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/PowerStatsCollector;Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->this$0:Lcom/android/server/power/stats/PowerStatsCollector;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mFirstCollection:Z

    iput-object p2, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

    iput p3, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerType:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mPerUidAttributionSupported:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastConsumerEnergyPerUid:Landroid/util/SparseLongArray;

    return-void
.end method


# virtual methods
.method public final collectConsumedEnergy(Lcom/android/internal/os/PowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;)Z
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->ensureInitialized()V

    iget-object v0, v1, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerIds:[I

    array-length v0, v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, v1, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

    iget-object v5, v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mVoltageSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda2;

    invoke-virtual {v5}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda2;->getAsInt()I

    move-result v5

    iget v6, v1, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastVoltageMv:I

    if-eqz v6, :cond_1

    add-int/2addr v6, v5

    div-int/lit8 v6, v6, 0x2

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_0
    const-string/jumbo v7, "PowerStatsCollector"

    if-gtz v6, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unexpected battery voltage ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mV) when querying energy consumers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    iput v5, v1, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastVoltageMv:I

    iget-object v5, v1, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerIds:[I

    iget-object v0, v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    invoke-virtual {v0, v5}, Landroid/power/PowerStatsInternal;->getEnergyConsumedAsync([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x4e20

    invoke-virtual {v0, v8, v9, v5}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/power/stats/EnergyConsumerResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v5, "Could not obtain energy consumers from PowerStatsService"

    invoke-static {v7, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    :goto_2
    return v4

    :cond_3
    move v5, v4

    :goto_3
    iget-object v7, v1, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerIds:[I

    array-length v7, v7

    if-ge v5, v7, :cond_d

    aget-object v7, v0, v5

    iget-wide v8, v7, Landroid/hardware/power/stats/EnergyConsumerResult;->energyUWs:J

    iget-object v10, v1, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastConsumedEnergyUws:[J

    aget-wide v11, v10, v5

    const-wide/16 v13, -0x1

    cmp-long v15, v11, v13

    const-wide/16 v16, 0x0

    if-eqz v15, :cond_4

    sub-long v11, v8, v11

    goto :goto_4

    :cond_4
    move-wide/from16 v11, v16

    :goto_4
    aput-wide v8, v10, v5

    cmp-long v8, v11, v16

    if-gez v8, :cond_5

    move-wide/from16 v11, v16

    :cond_5
    cmp-long v8, v11, v16

    if-nez v8, :cond_7

    iget-boolean v8, v1, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mFirstCollection:Z

    if-nez v8, :cond_7

    move/from16 v20, v5

    :cond_6
    :goto_5
    move/from16 v25, v6

    goto/16 :goto_9

    :cond_7
    iget-object v8, v2, Lcom/android/internal/os/PowerStats;->stats:[J

    const-wide/16 v9, 0x3e8

    mul-long/2addr v11, v9

    div-int/lit8 v15, v6, 0x2

    move-wide/from16 v18, v9

    int-to-long v9, v15

    add-long/2addr v11, v9

    move/from16 v20, v5

    int-to-long v4, v6

    div-long/2addr v11, v4

    iget v15, v3, Lcom/android/server/power/stats/format/PowerStatsLayout;->mDeviceEnergyConsumerPosition:I

    add-int v15, v15, v20

    aput-wide v11, v8, v15

    iget-boolean v8, v1, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mPerUidAttributionSupported:Z

    if-nez v8, :cond_8

    :goto_6
    goto :goto_5

    :cond_8
    iget-object v7, v7, Landroid/hardware/power/stats/EnergyConsumerResult;->attribution:[Landroid/hardware/power/stats/EnergyConsumerAttribution;

    if-nez v7, :cond_9

    goto :goto_6

    :cond_9
    array-length v8, v7

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v8, :cond_6

    aget-object v12, v7, v11

    iget-object v15, v1, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->this$0:Lcom/android/server/power/stats/PowerStatsCollector;

    iget v13, v12, Landroid/hardware/power/stats/EnergyConsumerAttribution;->uid:I

    iget-object v14, v15, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-virtual {v14, v13}, Lcom/android/server/power/stats/PowerStatsUidResolver;->mapUid(I)I

    move-result v13

    iget-object v14, v1, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastConsumerEnergyPerUid:Landroid/util/SparseLongArray;

    move-wide/from16 v23, v4

    const-wide/16 v4, -0x1

    invoke-virtual {v14, v13, v4, v5}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v14

    move-wide/from16 v21, v4

    iget-object v4, v1, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastConsumerEnergyPerUid:Landroid/util/SparseLongArray;

    move/from16 v25, v6

    iget-wide v5, v12, Landroid/hardware/power/stats/EnergyConsumerAttribution;->energyUWs:J

    invoke-virtual {v4, v13, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    cmp-long v4, v14, v21

    if-nez v4, :cond_a

    goto :goto_8

    :cond_a
    iget-wide v4, v12, Landroid/hardware/power/stats/EnergyConsumerAttribution;->energyUWs:J

    sub-long/2addr v4, v14

    cmp-long v6, v4, v16

    if-gtz v6, :cond_b

    goto :goto_8

    :cond_b
    iget-object v6, v2, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [J

    if-nez v6, :cond_c

    iget v6, v3, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidStatsArrayLength:I

    new-array v6, v6, [J

    iget-object v12, v2, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v12, v13, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_c
    iget v12, v3, Lcom/android/server/power/stats/format/PowerStatsLayout;->mUidEnergyConsumerPosition:I

    add-int v13, v12, v20

    aget-wide v13, v6, v13

    mul-long v4, v4, v18

    add-long/2addr v4, v9

    div-long v4, v4, v23

    add-long/2addr v4, v13

    add-int v12, v12, v20

    aput-wide v4, v6, v12

    :goto_8
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v13, v21

    move-wide/from16 v4, v23

    move/from16 v6, v25

    goto :goto_7

    :goto_9
    add-int/lit8 v5, v20, 0x1

    move/from16 v6, v25

    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_d
    move v15, v4

    iput-boolean v15, v1, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mFirstCollection:Z

    const/4 v0, 0x1

    return v0
.end method

.method public final ensureInitialized()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mIsInitialized:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerIds:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

    iget v1, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerType:I

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->getEnergyConsumerIds(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerIds:[I

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerIds:[I

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastConsumedEnergyUws:[J

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->this$0:Lcom/android/server/power/stats/PowerStatsCollector;

    iget-object v0, v0, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/PowerStatsUidResolver;->addListener(Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mIsInitialized:Z

    :cond_1
    return-void
.end method

.method public final getEnergyConsumerCount()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->ensureInitialized()V

    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerIds:[I

    array-length p0, p0

    return p0
.end method

.method public final onAfterIsolatedUidRemoved(II)V
    .locals 2

    iget-object p2, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastConsumerEnergyPerUid:Landroid/util/SparseLongArray;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->this$0:Lcom/android/server/power/stats/PowerStatsCollector;

    new-instance v0, Lcom/android/server/power/stats/PowerStatsCollector$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/power/stats/PowerStatsCollector$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;II)V

    iget-object p0, p2, Lcom/android/server/power/stats/PowerStatsCollector;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onBeforeIsolatedUidRemoved(I)V
    .locals 0

    return-void
.end method

.method public final onIsolatedUidAdded(II)V
    .locals 0

    return-void
.end method
