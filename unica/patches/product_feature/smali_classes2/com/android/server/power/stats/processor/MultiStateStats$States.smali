.class public final Lcom/android/server/power/stats/processor/MultiStateStats$States;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mLabels:[Ljava/lang/String;

.field public final mName:Ljava/lang/String;

.field public final mTracked:Z


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Z[Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mName:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    iput-object p3, p0, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    return-void
.end method

.method public static findTrackedStateByName([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_12

    aget-object v1, p0, v0

    iget-object v1, v1, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    return v0

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    const/4 p0, -0x1

    return p0
.end method

.method public static forEachTrackedStateCombination(Ljava/util/function/Consumer;[Lcom/android/server/power/stats/processor/MultiStateStats$States;[II)V
    .registers 6

    array-length v0, p2

    if-ge p3, v0, :cond_22

    aget-object v0, p1, p3

    iget-boolean v0, v0, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mTracked:Z

    if-nez v0, :cond_f

    add-int/lit8 p3, p3, 0x1

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->forEachTrackedStateCombination(Ljava/util/function/Consumer;[Lcom/android/server/power/stats/processor/MultiStateStats$States;[II)V

    return-void

    :cond_f
    const/4 v0, 0x0

    :goto_10
    aget-object v1, p1, p3

    iget-object v1, v1, Lcom/android/server/power/stats/processor/MultiStateStats$States;->mLabels:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_21

    aput v0, p2, p3

    add-int/lit8 v1, p3, 0x1

    invoke-static {p0, p1, p2, v1}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->forEachTrackedStateCombination(Ljava/util/function/Consumer;[Lcom/android/server/power/stats/processor/MultiStateStats$States;[II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_21
    return-void

    :cond_22
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
