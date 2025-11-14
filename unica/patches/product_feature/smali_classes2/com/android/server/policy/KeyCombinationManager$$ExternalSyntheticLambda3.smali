.class public final synthetic Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/KeyCombinationManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/KeyCombinationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/policy/KeyCombinationManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 10

    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/policy/KeyCombinationManager;

    check-cast p1, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget v3, p1, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode1:I

    invoke-virtual {v0, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    iget v4, p1, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    invoke-virtual {v0, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-lez v5, :cond_0

    invoke-virtual {v0, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v5

    const-wide/16 v7, 0x96

    add-long/2addr v5, v7

    cmp-long v3, v1, v5

    if-gtz v3, :cond_0

    invoke-virtual {v0, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    add-long/2addr v3, v7

    cmp-long v0, v1, v3

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->toString()Ljava/lang/String;

    new-instance v0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda6;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;I)V

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
