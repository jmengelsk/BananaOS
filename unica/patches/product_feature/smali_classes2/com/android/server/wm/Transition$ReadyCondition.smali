.class public final Lcom/android/server/wm/Transition$ReadyCondition;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAlternate:Ljava/lang/String;

.field public final mDebugTarget:Ljava/lang/Object;

.field public final mMet:Z

.field public final mName:Ljava/lang/String;

.field public mTracker:Lcom/android/server/wm/Transition$ReadyTracker;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mMet:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mAlternate:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mDebugTarget:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mMet:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mAlternate:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mDebugTarget:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final meet()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mMet:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mTransition:Lcom/android/server/wm/Transition;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t meet a condition before it is waited on"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mDebugTarget:Ljava/lang/Object;

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mAlternate:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/Transition$ReadyCondition;->mAlternate:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v1, p0, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    const-string/jumbo v1, "}"

    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
