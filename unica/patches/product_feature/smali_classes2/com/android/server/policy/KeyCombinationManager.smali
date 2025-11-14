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
    .registers 2

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
    .registers 4

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
    .registers 5

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    return-void
.end method


# virtual methods
.method public final addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_e
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
    .registers 4

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
    .registers 10

    sget-object v0, Lcom/android/server/policy/KeyCombinationManager;->KEYCODE_BLOCK_DELAY_DISPATCHING_KEY_LIST:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_11

    return-wide v1

    :cond_11
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_14
    iget-object v3, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-nez v3, :cond_22

    monitor-exit v0

    return-wide v1

    :catchall_20
    move-exception p0

    goto :goto_51

    :cond_22
    iget-object v3, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :cond_29
    :goto_29
    if-ge v5, v4, :cond_42

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    invoke-virtual {v6, p1}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    move-result v7

    if-eqz v7, :cond_29

    invoke-virtual {v6}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->getKeyInterceptDelayMs()J

    move-result-wide v6

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_29

    :cond_42
    const-wide/16 v3, 0x96

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide p0

    add-long/2addr p0, v1

    monitor-exit v0

    return-wide p0

    :goto_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_14 .. :try_end_52} :catchall_20

    throw p0
.end method

.method public final interceptKeyLocked(Landroid/view/KeyEvent;Z)Z
    .registers 16

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    const/4 v7, 0x0

    const-string v8, "KeyCombinationManager"

    if-eqz p2, :cond_c1

    if-eqz v0, :cond_c1

    iget-object p2, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p2}, Landroid/util/SparseLongArray;->size()I

    move-result p2

    const-wide/16 v9, 0x0

    if-lez p2, :cond_69

    iget-object p2, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p2, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v11

    cmp-long p2, v11, v9

    if-eqz p2, :cond_3c

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-lez p1, :cond_3c

    goto/16 :goto_141

    :cond_3c
    if-lez v4, :cond_5b

    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide p1

    const-wide/16 v11, 0x96

    add-long/2addr p1, v11

    cmp-long p1, v5, p1

    if-lez p1, :cond_5b

    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/android/server/policy/KeyCombinationManager;->forAllRules(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return v2

    :cond_5b
    if-nez v4, :cond_69

    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p0}, Landroid/util/SparseLongArray;->clear()V

    const-string/jumbo p0, "There is no active rule. mDownTimes clear"

    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_69
    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide p1

    cmp-long p1, p1, v9

    if-nez p1, :cond_141

    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p1, v3, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Landroid/util/SparseLongArray;->size()I

    move-result p1

    if-ne p1, v1, :cond_8d

    iput-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v3}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/policy/KeyCombinationManager;I)V

    invoke-static {p1, p2}, Lcom/android/server/policy/KeyCombinationManager;->forAllRules(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V

    return v2

    :cond_8d
    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    if-eqz p1, :cond_92

    return v1

    :cond_92
    new-instance p1, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/policy/KeyCombinationManager;)V

    iget-object p2, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v0, v2

    :goto_9e
    if-ge v0, p2, :cond_b2

    iget-object v3, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    invoke-virtual {p1, v3}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    goto :goto_b2

    :cond_af
    add-int/lit8 v0, v0, 0x1

    goto :goto_9e

    :cond_b2
    :goto_b2
    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    if-eqz p1, :cond_141

    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1

    :cond_c1
    if-nez p2, :cond_da

    if-eqz v0, :cond_da

    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Landroid/util/SparseLongArray;->size()I

    move-result p1

    if-nez p1, :cond_141

    iget-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    if-eqz p1, :cond_141

    const-string/jumbo p1, "interceptKeyLocked mTriggeredRule is null"

    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    return v2

    :cond_da
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseLongArray;->delete(I)V

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_COMBINATION_SCREENSHOT_SIDE_KEY:Z

    iget-object v5, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_10d

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mRemovePendingRules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_ec
    if-ltz v0, :cond_10d

    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mRemovePendingRules:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    invoke-virtual {v6, v3}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    move-result v7

    if-eqz v7, :cond_105

    new-instance v7, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;

    const/4 v8, 0x0

    invoke-direct {v7, v6, p1, p2, v8}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;Landroid/view/KeyEvent;ZI)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_105
    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mRemovePendingRules:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_ec

    :cond_10d
    sub-int/2addr v4, v1

    :goto_10e
    if-ltz v4, :cond_141

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    invoke-virtual {v0, v3}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    move-result v1

    if-eqz v1, :cond_13e

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_COMBINATION_SCREENSHOT_SIDE_KEY:Z

    if-eqz v1, :cond_130

    new-instance v1, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;

    const/4 v6, 0x1

    invoke-direct {v1, v0, p1, p2, v6}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;Landroid/view/KeyEvent;ZI)V

    invoke-virtual {v5, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mRemovePendingRules:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_130
    new-instance v1, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda6;

    const/4 v6, 0x0

    invoke-direct {v1, v0, v6}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;I)V

    invoke-virtual {v5, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_13e
    add-int/lit8 v4, v4, -0x1

    goto :goto_10e

    :cond_141
    :goto_141
    return v2
.end method

.method public final isKeyConsumed(Landroid/view/KeyEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x400

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    monitor-exit v0

    return v2

    :catchall_e
    move-exception p0

    goto :goto_21

    :cond_10
    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    if-eqz p0, :cond_1f

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 v2, 0x1

    :cond_1f
    monitor-exit v0

    return v2

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_e

    throw p0
.end method

.method public final isKeyPressed()Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    const/16 v1, 0x1a

    invoke-virtual {p0, v1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public final isPowerKeyIntercepted()Z
    .registers 9

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    const/16 v4, 0x1a

    const/4 v5, 0x1

    if-ge v3, v1, :cond_23

    iget-object v6, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    invoke-virtual {v6, v4}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    move-result v6

    if-eqz v6, :cond_20

    move v1, v5

    goto :goto_24

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_23
    move v1, v2

    :goto_24
    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    if-gt v1, v5, :cond_3d

    iget-object p0, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p0, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long p0, v3, v6

    if-nez p0, :cond_3e

    goto :goto_3d

    :catchall_3b
    move-exception p0

    goto :goto_42

    :cond_3d
    :goto_3d
    move v2, v5

    :cond_3e
    monitor-exit v0

    return v2

    :cond_40
    monitor-exit v0

    return v2

    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_3b

    throw p0
.end method
