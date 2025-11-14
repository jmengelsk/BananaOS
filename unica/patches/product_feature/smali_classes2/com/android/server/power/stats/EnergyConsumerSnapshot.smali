.class public final Lcom/android/server/power/stats/EnergyConsumerSnapshot;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAttributionSnapshots:Landroid/util/SparseArray;

.field public final mEnergyConsumerSnapshots:Landroid/util/SparseLongArray;

.field public final mEnergyConsumers:Landroid/util/SparseArray;

.field public final mNumCpuClusterOrdinals:I

.field public final mNumDisplayOrdinals:I

.field public final mNumOtherOrdinals:I

.field public final mVoltageSnapshots:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumerSnapshots:Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mVoltageSnapshots:Landroid/util/SparseIntArray;

    const/4 v0, 0x2

    invoke-static {v0, p1}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->calculateNumOrdinals(ILandroid/util/SparseArray;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mNumCpuClusterOrdinals:I

    const/4 v0, 0x3

    invoke-static {v0, p1}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->calculateNumOrdinals(ILandroid/util/SparseArray;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mNumDisplayOrdinals:I

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->calculateNumOrdinals(ILandroid/util/SparseArray;)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mNumOtherOrdinals:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mAttributionSnapshots:Landroid/util/SparseArray;

    return-void
.end method

.method public static calculateNumOrdinals(ILandroid/util/SparseArray;)I
    .locals 4

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/power/stats/EnergyConsumer;

    iget-byte v3, v3, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    if-ne v3, p0, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public final getOtherOrdinalNames()[Ljava/lang/String;
    .locals 12

    iget v0, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mNumOtherOrdinals:I

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_5

    iget-object v5, p0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/power/stats/EnergyConsumer;

    iget-byte v6, v5, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    if-nez v6, :cond_4

    add-int/lit8 v6, v4, 0x1

    iget-object v5, v5, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    if-nez v5, :cond_0

    const-string v5, ""

    goto :goto_3

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v8, v5

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_3

    aget-char v10, v5, v9

    invoke-static {v10}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_1

    const/16 v10, 0x20

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    invoke-static {v10}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v10, 0x5f

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    aput-object v5, v0, v4

    move v4, v6

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public final updateAndGetDelta([Landroid/hardware/power/stats/EnergyConsumerResult;I)Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    array-length v4, v1

    if-nez v4, :cond_1

    :cond_0
    move-object/from16 v16, v3

    goto/16 :goto_c

    :cond_1
    const-string v4, "EnergyConsumerSnapshot"

    if-gtz v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unexpected battery voltage ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mV) when taking energy consumer snapshot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_2
    new-instance v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const-wide/16 v6, -0x1

    iput-wide v6, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->bluetoothChargeUC:J

    iput-object v3, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cpuClusterChargeUC:[J

    iput-object v3, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->displayChargeUC:[J

    iput-wide v6, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->gnssChargeUC:J

    iput-wide v6, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->mobileRadioChargeUC:J

    iput-wide v6, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->wifiChargeUC:J

    iput-wide v6, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cameraChargeUC:J

    iput-object v3, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherTotalChargeUC:[J

    iput-object v3, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherUidChargesUC:[Landroid/util/SparseLongArray;

    array-length v8, v1

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_14

    aget-object v11, v1, v10

    iget v12, v11, Landroid/hardware/power/stats/EnergyConsumerResult;->id:I

    iget-wide v13, v11, Landroid/hardware/power/stats/EnergyConsumerResult;->energyUWs:J

    iget-object v11, v11, Landroid/hardware/power/stats/EnergyConsumerResult;->attribution:[Landroid/hardware/power/stats/EnergyConsumerAttribution;

    iget-object v15, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    invoke-virtual {v15, v12, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/power/stats/EnergyConsumer;

    if-nez v15, :cond_3

    const-string/jumbo v11, "updateAndGetDelta given invalid consumerId "

    invoke-static {v12, v11, v4}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    move v6, v2

    move/from16 v17, v8

    move/from16 v21, v10

    goto/16 :goto_b

    :cond_3
    iget-byte v3, v15, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    iget v9, v15, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    iget-object v1, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumerSnapshots:Landroid/util/SparseLongArray;

    move/from16 v17, v8

    move/from16 v18, v9

    invoke-virtual {v1, v12, v6, v7}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v8

    iget-object v1, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mVoltageSnapshots:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    iget-object v6, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mEnergyConsumerSnapshots:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v12, v13, v14}, Landroid/util/SparseLongArray;->put(IJ)V

    iget-object v6, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mVoltageSnapshots:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int v6, v1, v2

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v6, v6, 0x2

    iget-byte v7, v15, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    const-wide/16 v19, 0x3e8

    const-string v12, ": new energy ("

    move/from16 v21, v10

    move-object/from16 v22, v11

    if-eqz v7, :cond_4

    move/from16 v22, v1

    move/from16 v31, v3

    move-wide/from16 v27, v8

    :goto_1
    move-wide/from16 v29, v13

    const/4 v1, 0x0

    :goto_2
    const-wide/16 v23, 0x0

    goto/16 :goto_8

    :cond_4
    const/4 v7, 0x0

    if-nez v22, :cond_5

    new-array v10, v7, [Landroid/hardware/power/stats/EnergyConsumerAttribution;

    move-object v11, v10

    goto :goto_3

    :cond_5
    move-object/from16 v11, v22

    :goto_3
    iget-object v10, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mAttributionSnapshots:Landroid/util/SparseArray;

    iget v7, v15, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    move/from16 v22, v1

    const/4 v1, 0x0

    invoke-virtual {v10, v7, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseLongArray;

    if-nez v7, :cond_7

    new-instance v1, Landroid/util/SparseLongArray;

    array-length v7, v11

    invoke-direct {v1, v7}, Landroid/util/SparseLongArray;-><init>(I)V

    iget-object v7, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mAttributionSnapshots:Landroid/util/SparseArray;

    iget v10, v15, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {v7, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    array-length v7, v11

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v7, :cond_6

    move/from16 v25, v7

    aget-object v7, v11, v10

    move/from16 v26, v10

    iget v10, v7, Landroid/hardware/power/stats/EnergyConsumerAttribution;->uid:I

    move-wide/from16 v27, v8

    iget-wide v7, v7, Landroid/hardware/power/stats/EnergyConsumerAttribution;->energyUWs:J

    invoke-virtual {v1, v10, v7, v8}, Landroid/util/SparseLongArray;->put(IJ)V

    add-int/lit8 v10, v26, 0x1

    move/from16 v7, v25

    move-wide/from16 v8, v27

    goto :goto_4

    :cond_6
    move-wide/from16 v27, v8

    move/from16 v31, v3

    goto :goto_1

    :cond_7
    move-wide/from16 v27, v8

    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    array-length v8, v11

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v8, :cond_c

    aget-object v10, v11, v9

    move/from16 v25, v8

    iget v8, v10, Landroid/hardware/power/stats/EnergyConsumerAttribution;->uid:I

    move/from16 v26, v9

    iget-wide v9, v10, Landroid/hardware/power/stats/EnergyConsumerAttribution;->energyUWs:J

    move/from16 v31, v3

    move-wide/from16 v29, v13

    const-wide/16 v13, 0x0

    invoke-virtual {v7, v8, v13, v14}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v2

    invoke-virtual {v7, v8, v9, v10}, Landroid/util/SparseLongArray;->put(IJ)V

    cmp-long v23, v2, v13

    if-gez v23, :cond_8

    goto :goto_7

    :cond_8
    cmp-long v23, v9, v2

    if-nez v23, :cond_9

    goto :goto_7

    :cond_9
    sub-long v32, v9, v2

    cmp-long v34, v32, v13

    if-ltz v34, :cond_b

    if-gtz v6, :cond_a

    goto :goto_6

    :cond_a
    mul-long v32, v32, v19

    div-int/lit8 v2, v6, 0x2

    int-to-long v2, v2

    add-long v32, v32, v2

    int-to-long v2, v6

    div-long v2, v32, v2

    invoke-virtual {v1, v8, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_7

    :cond_b
    :goto_6
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v13, "EnergyConsumer "

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v15, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ") but old energy ("

    const-string v10, "). Average voltage ("

    invoke-static {v8, v9, v2, v3, v10}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    const-string v2, ")Skipping. "

    invoke-static {v6, v2, v4, v8}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :goto_7
    add-int/lit8 v9, v26, 0x1

    move/from16 v2, p2

    move/from16 v8, v25

    move-wide/from16 v13, v29

    move/from16 v3, v31

    goto :goto_5

    :cond_c
    move/from16 v31, v3

    move-wide/from16 v29, v13

    goto/16 :goto_2

    :goto_8
    cmp-long v2, v27, v23

    if-gez v2, :cond_d

    :goto_9
    move/from16 v6, p2

    goto/16 :goto_b

    :cond_d
    cmp-long v2, v29, v27

    if-nez v2, :cond_e

    goto :goto_9

    :cond_e
    sub-long v13, v29, v27

    cmp-long v2, v13, v23

    if-ltz v2, :cond_13

    if-gtz v22, :cond_f

    goto/16 :goto_a

    :cond_f
    mul-long v13, v13, v19

    div-int/lit8 v2, v6, 0x2

    int-to-long v2, v2

    add-long/2addr v13, v2

    int-to-long v2, v6

    div-long/2addr v13, v2

    packed-switch v31, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring consumer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v15, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " of unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v31

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :pswitch_0
    iput-wide v13, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cameraChargeUC:J

    goto :goto_9

    :pswitch_1
    iput-wide v13, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->wifiChargeUC:J

    goto :goto_9

    :pswitch_2
    iput-wide v13, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->mobileRadioChargeUC:J

    goto :goto_9

    :pswitch_3
    iput-wide v13, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->gnssChargeUC:J

    goto :goto_9

    :pswitch_4
    iget-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->displayChargeUC:[J

    if-nez v1, :cond_10

    iget v1, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mNumDisplayOrdinals:I

    new-array v1, v1, [J

    iput-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->displayChargeUC:[J

    :cond_10
    iget-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->displayChargeUC:[J

    aput-wide v13, v1, v18

    goto :goto_9

    :pswitch_5
    iget-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cpuClusterChargeUC:[J

    if-nez v1, :cond_11

    iget v1, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mNumCpuClusterOrdinals:I

    new-array v1, v1, [J

    iput-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cpuClusterChargeUC:[J

    :cond_11
    iget-object v1, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cpuClusterChargeUC:[J

    aput-wide v13, v1, v18

    goto :goto_9

    :pswitch_6
    iput-wide v13, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->bluetoothChargeUC:J

    goto :goto_9

    :pswitch_7
    iget-object v2, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherTotalChargeUC:[J

    if-nez v2, :cond_12

    iget v2, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->mNumOtherOrdinals:I

    new-array v3, v2, [J

    iput-object v3, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherTotalChargeUC:[J

    new-array v2, v2, [Landroid/util/SparseLongArray;

    iput-object v2, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherUidChargesUC:[Landroid/util/SparseLongArray;

    :cond_12
    iget-object v2, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherTotalChargeUC:[J

    aput-wide v13, v2, v18

    iget-object v2, v5, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherUidChargesUC:[Landroid/util/SparseLongArray;

    aput-object v1, v2, v18

    goto :goto_9

    :cond_13
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad data! EnergyConsumer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v15, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v29

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ") < old energy ("

    const-string v3, "), new voltage ("

    move-wide/from16 v6, v27

    invoke-static {v1, v2, v6, v7, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    const-string v2, "), old voltage ("

    const-string v3, "). Skipping. "

    move/from16 v6, p2

    move/from16 v7, v22

    invoke-static {v6, v7, v2, v3, v1}, Lcom/android/server/am/BroadcastController$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    add-int/lit8 v10, v21, 0x1

    move-object/from16 v1, p1

    move v2, v6

    move/from16 v8, v17

    const/4 v3, 0x0

    const-wide/16 v6, -0x1

    goto/16 :goto_0

    :cond_14
    return-object v5

    :goto_c
    return-object v16

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
