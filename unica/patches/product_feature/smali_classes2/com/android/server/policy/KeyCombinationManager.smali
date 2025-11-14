.class public final Lcom/android/server/policy/KeyCombinationManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final KEYCODE_BLOCK_DELAY_DISPATCHING_KEY_LIST:Ljava/util/Set;


# instance fields
.field public final mActiveRules:Ljava/util/ArrayList;

.field public final mDownTimes:Landroid/util/SparseLongArray;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mRemovePendingRules:Ljava/util/ArrayList;

.field public final mRules:Ljava/util/ArrayList;

.field public mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/policy/KeyCombinationManager;->KEYCODE_BLOCK_DELAY_DISPATCHING_KEY_LIST:Ljava/util/Set;

    const/16 v1, 0xbb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mRemovePendingRules:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseLongArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static forAllRules(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V
    .locals 3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Rule : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already exists."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "KeyCombination rules:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/server/policy/KeyCombinationManager;->forAllRules(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final getKeyInterceptTimeout(I)J
    .locals 8

    sget-object v0, Lcom/android/server/policy/KeyCombinationManager;->KEYCODE_BLOCK_DELAY_DISPATCHING_KEY_LIST:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-nez v3, :cond_1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :cond_2
    :goto_0
    if-ge v5, v4, :cond_3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    invoke-virtual {v6, p1}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->getKeyInterceptDelayMs()J

    move-result-wide v6

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_0

    :cond_3
    const-wide/16 v3, 0x96

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide p0

    add-long/2addr p0, v1

    monitor-exit v0

    return-wide p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final interceptKeyLocked(Landroid/view/KeyEvent;Z)Z
    .locals 13

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    const/4 v7, 0x0

    const-string v8, "KeyCombinationManager"

    if-eqz p2, :cond_8

    if-eqz v0, :cond_8

    iget-object p2, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p2}, Landroid/util/SparseLongArray;->size()I

    move-result p2

    const-wide/16 v9, 0x0

    if-lez p2, :cond_3

    iget-object p2, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p2, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v11

    cmp-long p2, v11, v9

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-lez p1, :cond_1

    goto/16 :goto_5

    :cond_1
    if-lez v4, :cond_2

    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide p1

    const-wide/16 v11, 0x96

    add-long/2addr p1, v11

    cmp-long p1, v5, p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/android/server/policy/KeyCombinationManager;->forAllRules(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return v2

    :cond_2
    if-nez v4, :cond_3

    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p0}, Landroid/util/SparseLongArray;->clear()V

    const-string/jumbo p0, "There is no active rule. mDownTimes clear"

    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide p1

    cmp-long p1, p1, v9

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p1, v3, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Landroid/util/SparseLongArray;->size()I

    move-result p1

    if-ne p1, v1, :cond_4

    iput-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v3}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/policy/KeyCombinationManager;I)V

    invoke-static {p1, p2}, Lcom/android/server/policy/KeyCombinationManager;->forAllRules(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V

    return v2

    :cond_4
    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    if-eqz p1, :cond_5

    return v1

    :cond_5
    new-instance p1, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/policy/KeyCombinationManager;)V

    iget-object p2, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v0, v2

    :goto_1
    if-ge v0, p2, :cond_7

    iget-object v3, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    invoke-virtual {p1, v3}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1

    :cond_8
    if-nez p2, :cond_9

    if-eqz v0, :cond_9

    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Landroid/util/SparseLongArray;->size()I

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    if-eqz p1, :cond_e

    const-string/jumbo p1, "interceptKeyLocked mTriggeredRule is null"

    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    return v2

    :cond_9
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseLongArray;->delete(I)V

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_COMBINATION_SCREENSHOT_SIDE_KEY:Z

    iget-object v5, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mRemovePendingRules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_3
    if-ltz v0, :cond_b

    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mRemovePendingRules:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    invoke-virtual {v6, v3}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    move-result v7

    if-eqz v7, :cond_a

    new-instance v7, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;

    const/4 v8, 0x0

    invoke-direct {v7, v6, p1, p2, v8}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;Landroid/view/KeyEvent;ZI)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_a
    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mRemovePendingRules:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_b
    sub-int/2addr v4, v1

    :goto_4
    if-ltz v4, :cond_e

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    invoke-virtual {v0, v3}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_COMBINATION_SCREENSHOT_SIDE_KEY:Z

    if-eqz v1, :cond_c

    new-instance v1, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;

    const/4 v6, 0x1

    invoke-direct {v1, v0, p1, p2, v6}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;Landroid/view/KeyEvent;ZI)V

    invoke-virtual {v5, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mRemovePendingRules:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    new-instance v1, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda6;

    const/4 v6, 0x0

    invoke-direct {v1, v0, v6}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;I)V

    invoke-virtual {v5, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_d
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :cond_e
    :goto_5
    return v2
.end method

.method public final isKeyConsumed(Landroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x400

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit v0

    return v2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isKeyPressed()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    const/16 v1, 0x1a

    invoke-virtual {p0, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isPowerKeyIntercepted()Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x1a

    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    invoke-virtual {v6, v4}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    move-result v6

    if-eqz v6, :cond_0

    move v1, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    if-gt v1, v5, :cond_2

    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p0, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long p0, v3, v6

    if-nez p0, :cond_3

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    move v2, v5

    :cond_3
    monitor-exit v0

    return v2

    :cond_4
    monitor-exit v0

    return v2

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
