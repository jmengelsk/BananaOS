.class public final synthetic Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivitySnapshotController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivitySnapshotController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivitySnapshotController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivitySnapshotController;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->findSavedFile(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
