.class public final synthetic Lcom/android/server/power/stats/processor/MultiStateStats$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/power/stats/processor/MultiStateStats;

.field public final synthetic f$1:[J

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/processor/MultiStateStats;Lcom/android/modules/utils/TypedXmlSerializer;[J)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/processor/MultiStateStats$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/processor/MultiStateStats;

    iput-object p2, p0, Lcom/android/server/power/stats/processor/MultiStateStats$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/power/stats/processor/MultiStateStats$$ExternalSyntheticLambda0;->f$1:[J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/stats/processor/MultiStateStats;[JLjava/lang/StringBuilder;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/processor/MultiStateStats$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/processor/MultiStateStats;

    iput-object p2, p0, Lcom/android/server/power/stats/processor/MultiStateStats$$ExternalSyntheticLambda0;->f$1:[J

    iput-object p3, p0, Lcom/android/server/power/stats/processor/MultiStateStats$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/processor/MultiStateStats;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v1, Lcom/android/modules/utils/TypedXmlSerializer;

    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$$ExternalSyntheticLambda0;->f$1:[J

    check-cast p1, [I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {v0, v1, p1, p0}, Lcom/android/server/power/stats/processor/MultiStateStats;->writeXmlForStates(Lcom/android/modules/utils/TypedXmlSerializer;[I[J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/processor/MultiStateStats;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStateStats$$ExternalSyntheticLambda0;->f$1:[J

    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStateStats$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast p0, Ljava/lang/StringBuilder;

    check-cast p1, [I

    iget-object v2, v0, Lcom/android/server/power/stats/processor/MultiStateStats;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/MultiStateStats;->mFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->getSerialState([I)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getCounts([JI)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "\n"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, "("

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_4

    iget-object v5, v0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->mStates:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v6, v5, v4

    iget-boolean v6, v6, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    if-eqz v6, :cond_3

    if-nez v2, :cond_2

    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    aget-object v2, v5, v4

    iget-object v2, v2, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    aget v5, p1, v4

    aget-object v2, v2, v5

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const-string p1, ") "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
