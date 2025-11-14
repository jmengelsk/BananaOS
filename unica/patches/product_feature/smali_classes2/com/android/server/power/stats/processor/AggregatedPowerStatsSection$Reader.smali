.class public final Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection$Reader;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;


# instance fields
.field public final mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection$Reader;->mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    return-void
.end method


# virtual methods
.method public final read(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/power/stats/PowerStatsSpan$Section;
    .registers 21

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

    :goto_1f
    if-eq v8, v4, :cond_146

    if-ne v8, v3, :cond_2d

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_146

    :cond_2d
    if-nez v10, :cond_8b

    if-ne v8, v1, :cond_8b

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v12, "power_component"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4d

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_48

    goto :goto_8b

    :cond_48
    move-object/from16 v16, v2

    move v11, v4

    goto/16 :goto_13c

    :cond_4d
    if-nez v11, :cond_50

    goto :goto_8b

    :cond_50
    const-string/jumbo v8, "id"

    const/4 v12, 0x0

    invoke-interface {v0, v12, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    iget-object v13, v7, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v13, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    if-nez v13, :cond_72

    invoke-virtual {v9, v8}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->createPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v14

    if-eqz v14, :cond_72

    new-instance v13, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-direct {v13, v7, v14}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStats;Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iget-object v14, v7, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v14, v8, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_72
    if-eqz v13, :cond_8b

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v14

    :goto_7c
    if-eq v14, v4, :cond_8b

    if-ne v14, v3, :cond_8f

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8b

    goto :goto_8f

    :cond_8b
    :goto_8b
    move-object/from16 v16, v2

    goto/16 :goto_13c

    :cond_8f
    :goto_8f
    if-ne v14, v1, :cond_130

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v2

    const-wide/16 v1, -0x1

    const/16 v17, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_14a

    goto :goto_d9

    :sswitch_a6
    const-string/jumbo v3, "uid-stats"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b0

    goto :goto_d9

    :cond_b0
    const/16 v17, 0x3

    goto :goto_d9

    :sswitch_b3
    const-string/jumbo v3, "state-stats"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bd

    goto :goto_d9

    :cond_bd
    const/16 v17, 0x2

    goto :goto_d9

    :sswitch_c0
    const-string/jumbo v3, "descriptor"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ca

    goto :goto_d9

    :cond_ca
    move/from16 v17, v4

    goto :goto_d9

    :sswitch_cd
    const-string/jumbo v3, "device-stats"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d7

    goto :goto_d9

    :cond_d7
    move/from16 v17, v5

    :goto_d9
    packed-switch v17, :pswitch_data_15c

    goto :goto_132

    :pswitch_dd  #0x3
    const-string/jumbo v3, "uid"

    invoke-interface {v0, v12, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    move-result-object v3

    iget-object v14, v3, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v14, :cond_ef

    invoke-virtual {v13, v3, v1, v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createUidStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;J)V

    :cond_ef
    iput-boolean v4, v3, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->hasPowerStats:Z

    iget-object v1, v3, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v1, v0}, Lcom/android/server/power/stats/processor/MultiStateStats;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Z

    move-result v1

    if-nez v1, :cond_132

    goto :goto_12e

    :pswitch_fa  #0x2
    const-string/jumbo v1, "key"

    invoke-interface {v0, v12, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, v13, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v2, :cond_10f

    invoke-virtual {v13, v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createStateStats(I)Lcom/android/server/power/stats/processor/MultiStateStats;

    move-result-object v2

    :cond_10f
    invoke-virtual {v2, v0}, Lcom/android/server/power/stats/processor/MultiStateStats;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Z

    move-result v1

    if-nez v1, :cond_132

    goto :goto_12e

    :pswitch_116  #0x1
    invoke-static {v0}, Lcom/android/internal/os/PowerStats$Descriptor;->createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object v1

    iput-object v1, v13, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-nez v1, :cond_132

    goto :goto_12e

    :pswitch_11f  #0x0
    iget-object v3, v13, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v3, :cond_126

    invoke-virtual {v13, v1, v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createDeviceStats(J)V

    :cond_126
    iget-object v1, v13, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v1, v0}, Lcom/android/server/power/stats/processor/MultiStateStats;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Z

    move-result v1

    if-nez v1, :cond_132

    :goto_12e
    move v10, v4

    goto :goto_13c

    :cond_130
    move-object/from16 v16, v2

    :cond_132
    :goto_132
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v14

    move-object/from16 v2, v16

    const/4 v1, 0x2

    const/4 v3, 0x3

    goto/16 :goto_7c

    :goto_13c
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v8

    move-object/from16 v2, v16

    const/4 v1, 0x2

    const/4 v3, 0x3

    goto/16 :goto_1f

    :cond_146
    invoke-direct {v6, v7}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V

    return-object v6

    :sswitch_data_14a
    .sparse-switch
        -0x7836a198 -> :sswitch_cd
        -0x2c9b2c91 -> :sswitch_c0
        0x6242c63 -> :sswitch_b3
        0x5be620e2 -> :sswitch_a6
    .end sparse-switch

    :pswitch_data_15c
    .packed-switch 0x0
        :pswitch_11f  #00000000
        :pswitch_116  #00000001
        :pswitch_fa  #00000002
        :pswitch_dd  #00000003
    .end packed-switch
.end method
