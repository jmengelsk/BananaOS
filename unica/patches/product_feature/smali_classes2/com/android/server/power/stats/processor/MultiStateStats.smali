.class public final Lcom/android/server/power/stats/processor/MultiStateStats;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mCompositeState:I

.field public final mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

.field public final mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

.field public mTracking:Z


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/processor/MultiStateStats$Factory;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    new-instance v0, Lcom/android/internal/os/LongArrayMultiStateCounter;

    iget p1, p1, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mSerialStateCount:I

    invoke-direct {v0, p1, p2}, Lcom/android/internal/os/LongArrayMultiStateCounter;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    return-void
.end method


# virtual methods
.method public final readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Z
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getArrayLength()I

    move-result v3

    new-array v4, v3, [J

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v5

    :goto_14
    const/4 v6, 0x1

    if-eq v5, v6, :cond_25

    const/4 v7, 0x3

    if-ne v5, v7, :cond_29

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_25

    goto :goto_29

    :cond_25
    move/from16 v16, v6

    goto/16 :goto_126

    :cond_29
    :goto_29
    const/4 v7, 0x2

    if-ne v5, v7, :cond_11e

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "stats"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11e

    const-wide/16 v7, 0x0

    invoke-static {v4, v7, v8}, Ljava/util/Arrays;->fill([JJ)V

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeCount()I

    move-result v5

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    :goto_45
    iget-object v10, v0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    if-ge v8, v5, :cond_115

    invoke-interface {v1, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    const-string/jumbo v13, "MultiStateStats"

    if-eqz v12, :cond_9b

    :try_start_59
    invoke-virtual {v11, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_61
    .catch Ljava/lang/NumberFormatException; {:try_start_59 .. :try_end_61} :catch_8d

    if-ltz v10, :cond_72

    if-lt v10, v3, :cond_66

    goto :goto_72

    :cond_66
    invoke-interface {v1, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(I)J

    move-result-wide v11

    aput-wide v11, v4, v10

    move/from16 v16, v6

    move/from16 v17, v7

    goto/16 :goto_10b

    :cond_72
    :goto_72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "State index out of bounds: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :catch_8d
    move-exception v0

    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v3, "Unexpected index syntax: "

    invoke-virtual {v3, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    :cond_9b
    invoke-interface {v1, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    move v14, v7

    :goto_a0
    iget-object v15, v10, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move/from16 v16, v6

    array-length v6, v15

    move/from16 v17, v7

    if-ge v14, v6, :cond_fd

    aget-object v6, v15, v14

    iget-object v15, v6, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mName:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f4

    move/from16 v15, v17

    :goto_b5
    iget-object v7, v6, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    array-length v1, v7

    if-ge v15, v1, :cond_d7

    aget-object v1, v7, v15

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d2

    iget-object v1, v10, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStateBitFieldMasks:[I

    aget v1, v1, v14

    not-int v1, v1

    and-int/2addr v1, v9

    iget-object v6, v10, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStateBitFieldShifts:[S

    aget-short v6, v6, v14

    shl-int v6, v15, v6

    or-int/2addr v1, v6

    move v9, v1

    const/4 v1, -0x1

    goto :goto_108

    :cond_d2
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    goto :goto_b5

    :cond_d7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Unexpected label \'"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' for state: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f1
    const/4 v1, -0x1

    const/4 v9, -0x1

    goto :goto_108

    :cond_f4
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move/from16 v6, v16

    move/from16 v7, v17

    goto :goto_a0

    :cond_fd
    const-string/jumbo v1, "Unsupported state: "

    invoke-virtual {v1, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f1

    :goto_108
    if-ne v9, v1, :cond_10b

    return v17

    :cond_10b
    :goto_10b
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    move/from16 v6, v16

    move/from16 v7, v17

    goto/16 :goto_45

    :cond_115
    iget-object v1, v0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    iget-object v5, v10, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mCompositeToSerialState:[I

    aget v5, v5, v9

    invoke-virtual {v1, v5, v4}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setValues(I[J)V

    :cond_11e
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v5

    move-object/from16 v1, p1

    goto/16 :goto_14

    :goto_126
    return v16
.end method

.method public final setState(IIJ)V
    .registers 8

    iget-boolean v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mTracking:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getArrayLength()I

    move-result v1

    new-array v1, v1, [J

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/internal/os/LongArrayMultiStateCounter;->updateValues([JJ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mTracking:Z

    :cond_12
    iget v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCompositeState:I

    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget-object v2, v1, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStateBitFieldMasks:[I

    aget v2, v2, p1

    not-int v2, v2

    and-int/2addr v0, v2

    iget-object v2, v1, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStateBitFieldShifts:[S

    aget-short p1, v2, p1

    shl-int p1, p2, p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCompositeState:I

    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    iget-object p2, v1, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mCompositeToSerialState:[I

    aget p1, p2, p1

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setState(IJ)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getArrayLength()I

    move-result v1

    new-array v1, v1, [J

    iget-object v2, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    new-instance v3, Lcom/android/server/power/stats/processor/MultiStateStats$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/server/power/stats/processor/MultiStateStats$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/processor/MultiStateStats;[JLjava/lang/StringBuilder;)V

    array-length p0, v2

    new-array p0, p0, [I

    const/4 v1, 0x0

    invoke-static {v3, v2, p0, v1}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->forEachTrackedStateCombination(Ljava/util/function/Consumer;[Lcom/android/server/power/stats/processor/MultiStateStats$States;[II)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getArrayLength()I

    move-result v0

    new-array v0, v0, [J

    :try_start_8
    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    new-instance v2, Lcom/android/server/power/stats/processor/MultiStateStats$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/power/stats/processor/MultiStateStats$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/processor/MultiStateStats;Lcom/android/modules/utils/TypedXmlSerializer;[J)V

    array-length p0, v1

    new-array p0, p0, [I

    const/4 p1, 0x0

    invoke-static {v2, v1, p0, p1}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->forEachTrackedStateCombination(Ljava/util/function/Consumer;[Lcom/android/server/power/stats/processor/MultiStateStats$States;[II)V
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_29

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0

    :cond_29
    throw p0
.end method

.method public final writeXmlForStates(Lcom/android/modules/utils/TypedXmlSerializer;[I[J)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->getSerialState([I)I

    move-result v1

    invoke-virtual {v0, p3, v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getCounts([JI)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    const/4 v0, 0x0

    const-string/jumbo v1, "stats"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    move v3, v2

    :goto_18
    array-length v4, p2

    if-ge v3, v4, :cond_33

    iget-object v4, p0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v4, v4, v3

    iget-boolean v5, v4, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    if-eqz v5, :cond_30

    aget v5, p2, v3

    if-eqz v5, :cond_30

    iget-object v6, v4, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mName:Ljava/lang/String;

    iget-object v4, v4, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-interface {p1, v0, v6, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_33
    :goto_33
    array-length p0, p3

    if-ge v2, p0, :cond_4d

    aget-wide v3, p3, v2

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-eqz p0, :cond_4a

    const-string/jumbo p0, "_"

    invoke-static {v2, p0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aget-wide v3, p3, v2

    invoke-interface {p1, v0, p0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_4d
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
