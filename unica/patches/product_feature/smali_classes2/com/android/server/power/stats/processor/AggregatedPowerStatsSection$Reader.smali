.class public final Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection$Reader;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;


# instance fields
.field public final mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection$Reader;->mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    return-void
.end method


# virtual methods
.method public final read(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/power/stats/PowerStatsSpan$Section;
    .locals 19

    move-object/from16 v0, p1

    const/4 v1, 0x2

    const-string/jumbo v2, "agg-power-stats"

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v6, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;

    new-instance v7, Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    new-instance v8, Landroid/util/SparseBooleanArray;

    invoke-direct {v8}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v9, p0

    iget-object v9, v9, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection$Reader;->mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    invoke-direct {v7, v9, v8}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;Landroid/util/SparseBooleanArray;)V

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v8

    move v10, v5

    move v11, v10

    :goto_0
    if-eq v8, v4, :cond_10

    if-ne v8, v3, :cond_0

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    :cond_0
    if-nez v10, :cond_5

    if-ne v8, v1, :cond_5

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v12, "power_component"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    move-object/from16 v16, v2

    move v11, v4

    goto/16 :goto_7

    :cond_2
    if-nez v11, :cond_3

    goto :goto_2

    :cond_3
    const-string/jumbo v8, "id"

    const/4 v12, 0x0

    invoke-interface {v0, v12, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    iget-object v13, v7, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v13, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    if-nez v13, :cond_4

    invoke-virtual {v9, v8}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->createPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v14

    if-eqz v14, :cond_4

    new-instance v13, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-direct {v13, v7, v14}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStats;Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iget-object v14, v7, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v14, v8, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    if-eqz v13, :cond_5

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v14

    :goto_1
    if-eq v14, v4, :cond_5

    if-ne v14, v3, :cond_6

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    move-object/from16 v16, v2

    goto/16 :goto_7

    :cond_6
    :goto_3
    if-ne v14, v1, :cond_e

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v2

    const-wide/16 v1, -0x1

    const/16 v17, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string/jumbo v3, "uid-stats"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    const/16 v17, 0x3

    goto :goto_4

    :sswitch_1
    const-string/jumbo v3, "state-stats"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    const/16 v17, 0x2

    goto :goto_4

    :sswitch_2
    const-string/jumbo v3, "descriptor"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_4

    :cond_9
    move/from16 v17, v4

    goto :goto_4

    :sswitch_3
    const-string/jumbo v3, "device-stats"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_4

    :cond_a
    move/from16 v17, v5

    :goto_4
    packed-switch v17, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    const-string/jumbo v3, "uid"

    invoke-interface {v0, v12, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    move-result-object v3

    iget-object v14, v3, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v14, :cond_b

    invoke-virtual {v13, v3, v1, v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createUidStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;J)V

    :cond_b
    iput-boolean v4, v3, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->hasPowerStats:Z

    iget-object v1, v3, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v1, v0}, Lcom/android/server/power/stats/processor/MultiStateStats;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_5

    :pswitch_1
    const-string/jumbo v1, "key"

    invoke-interface {v0, v12, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, v13, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v2, :cond_c

    invoke-virtual {v13, v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createStateStats(I)Lcom/android/server/power/stats/processor/MultiStateStats;

    move-result-object v2

    :cond_c
    invoke-virtual {v2, v0}, Lcom/android/server/power/stats/processor/MultiStateStats;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_5

    :pswitch_2
    invoke-static {v0}, Lcom/android/internal/os/PowerStats$Descriptor;->createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object v1

    iput-object v1, v13, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-nez v1, :cond_f

    goto :goto_5

    :pswitch_3
    iget-object v3, v13, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v3, :cond_d

    invoke-virtual {v13, v1, v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createDeviceStats(J)V

    :cond_d
    iget-object v1, v13, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v1, v0}, Lcom/android/server/power/stats/processor/MultiStateStats;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Z

    move-result v1

    if-nez v1, :cond_f

    :goto_5
    move v10, v4

    goto :goto_7

    :cond_e
    move-object/from16 v16, v2

    :cond_f
    :goto_6
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v14

    move-object/from16 v2, v16

    const/4 v1, 0x2

    const/4 v3, 0x3

    goto/16 :goto_1

    :goto_7
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v8

    move-object/from16 v2, v16

    const/4 v1, 0x2

    const/4 v3, 0x3

    goto/16 :goto_0

    :cond_10
    invoke-direct {v6, v7}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V

    return-object v6

    :sswitch_data_0
    .sparse-switch
        -0x7836a198 -> :sswitch_3
        -0x2c9b2c91 -> :sswitch_2
        0x6242c63 -> :sswitch_1
        0x5be620e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
