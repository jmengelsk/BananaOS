.class public final synthetic Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$1:Lcom/android/server/wm/WindowContainer;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;[I)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/wm/WindowContainer;

    iput-object p2, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>([Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Ljava/util/ArrayList;)V
    .registers 4

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/wm/WindowContainer;

    iput-object p3, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda8;->$r8$classId:I

    packed-switch v0, :pswitch_data_4e

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    check-cast p0, [I

    check-cast p1, Lcom/android/server/wm/Task;

    const-string/jumbo v1, "pauseBackTasks"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/Task;->pauseActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 p1, 0x0

    aget v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, p1

    :cond_1f
    return-void

    :pswitch_20  #0x0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/wm/WindowContainer;

    check-cast v0, Lcom/android/server/wm/Task;

    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/wm/Task;

    iget-boolean v1, p1, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_4c

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v1

    if-eqz v1, :cond_4c

    if-eqz v0, :cond_49

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4c

    :cond_49
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4c
    :goto_4c
    return-void

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_20  #00000000
    .end packed-switch
.end method
