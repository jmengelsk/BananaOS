.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Lcom/android/server/wm/WindowContainer;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lcom/android/server/wm/Task;Ljava/util/ArrayList;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowContainer;

    iput-object p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>([Z[ZLcom/android/server/wm/ActivityRecord;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowContainer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 9

    iget v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_84

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, [Z

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v1, [Z

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowContainer;

    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_1b

    const/4 p1, 0x0

    goto :goto_1d

    :cond_1b
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    :goto_1d
    const/4 v2, 0x0

    aget-boolean v3, v0, v2

    const/4 v4, 0x1

    if-nez p1, :cond_25

    move v5, v4

    goto :goto_26

    :cond_25
    move v5, v2

    :goto_26
    and-int/2addr v3, v5

    aput-boolean v3, v0, v2

    if-eqz p1, :cond_37

    aget-boolean v0, v1, v2

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v4

    and-int/2addr p0, v0

    aput-boolean p0, v1, v2

    :cond_37
    return-void

    :pswitch_38  #0x0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/Task;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/wm/Task;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_83

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_83

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v3, Lcom/android/server/wm/ActivityAssistInfo;

    invoke-direct {v3, v2}, Lcom/android/server/wm/ActivityAssistInfo;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    new-instance v3, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda44;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda44;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTaskWithAdjacent()Lcom/android/server/wm/Task;

    move-result-object v2

    if-nez v2, :cond_6e

    goto :goto_79

    :cond_6e
    iget-object v4, v2, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragments:Lcom/android/server/wm/TaskFragment$AdjacentSet;

    new-instance v5, Lcom/android/server/wm/Task$$ExternalSyntheticLambda57;

    const/4 v6, 0x4

    invoke-direct {v5, v6, v3}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda57;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v5, v2}, Lcom/android/server/wm/TaskFragment$AdjacentSet;->forAllTaskFragments(Ljava/util/function/Consumer;Lcom/android/server/wm/TaskFragment;)V

    :goto_79
    if-ne p1, v1, :cond_80

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_83

    :cond_80
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_83
    :goto_83
    return-void

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_38  #00000000
    .end packed-switch
.end method
