.class public final synthetic Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivitySnapshotController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivitySnapshotController;ZLjava/util/ArrayList;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/ActivitySnapshotController;

    iput-boolean p2, p0, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda2;->f$1:Z

    iput-object p3, p0, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda2;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/ActivitySnapshotController;

    iget-boolean v1, p0, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda2;->f$1:Z

    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda2;->f$2:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/wm/TaskFragment;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_1b

    if-eqz v1, :cond_18

    iget-object v0, v0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/android/server/wm/ActivitySnapshotController;->isInParticipant(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_18
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    return-void
.end method
