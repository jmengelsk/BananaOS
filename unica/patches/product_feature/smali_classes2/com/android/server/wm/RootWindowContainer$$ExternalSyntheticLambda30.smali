.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(IZLjava/util/ArrayList;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;->f$0:I

    iput-boolean p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;->f$1:Z

    iput-object p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;->f$3:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;->f$4:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 6

    iget v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;->f$0:I

    iget-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;->f$1:Z

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;->f$3:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda30;->f$4:I

    check-cast p1, Lcom/android/server/wm/Task;

    iget v4, p1, Lcom/android/server/wm/Task;->effectiveUid:I

    const/4 v5, 0x0

    if-ne v4, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p1, p0, v3}, Lcom/android/server/wm/Task;->getDumpActivitiesLocked(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return v5
.end method
