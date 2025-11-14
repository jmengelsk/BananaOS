.class public final Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;
.super Lcom/android/server/power/stats/PowerStatsSpan$Section;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAggregatedPowerStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V
    .locals 1

    const-string/jumbo v0, "aggregated-power-stats"

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/PowerStatsSpan$Section;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;->mAggregatedPowerStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;->mAggregatedPowerStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public final write(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 11

    iget-object p0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;->mAggregatedPowerStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const-string/jumbo v1, "agg-power-stats"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    iget-object v5, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mGenericPowerComponent:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    if-eq v4, v5, :cond_5

    iget-object v5, v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-nez v5, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string/jumbo v5, "power_component"

    invoke-interface {p1, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "id"

    iget v7, v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->powerComponentId:I

    invoke-interface {p1, v0, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v6, v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v6, p1}, Lcom/android/internal/os/PowerStats$Descriptor;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    iget-object v6, v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v6, :cond_1

    const-string/jumbo v6, "device-stats"

    invoke-interface {p1, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v7, v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v7, p1}, Lcom/android/server/power/stats/processor/MultiStateStats;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-interface {p1, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    move v6, v2

    :goto_1
    iget-object v7, v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    const-string/jumbo v7, "state-stats"

    invoke-interface {p1, v0, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v8, v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    const-string/jumbo v9, "key"

    invoke-interface {p1, v0, v9, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v8, v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v8, p1}, Lcom/android/server/power/stats/processor/MultiStateStats;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-interface {p1, v0, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    iget-object v6, v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_2
    if-ltz v6, :cond_4

    iget-object v7, v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    iget-object v8, v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    iget-object v9, v8, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v9, :cond_3

    const-string/jumbo v9, "uid-stats"

    invoke-interface {p1, v0, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "uid"

    invoke-interface {p1, v0, v10, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v7, v8, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v7, p1}, Lcom/android/server/power/stats/processor/MultiStateStats;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-interface {p1, v0, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_4
    invoke-interface {p1, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V

    return-void
.end method
