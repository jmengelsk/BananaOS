.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda57;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    iput p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda57;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda57;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 7

    iget v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda57;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda57;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_6a

    check-cast p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda44;

    check-cast p1, Lcom/android/server/wm/TaskFragment;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda44;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_13  #0x3
    check-cast p0, Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_1b  #0x2
    check-cast p0, Lcom/android/server/am/AppTimeTracker;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    iput-object p0, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    return-void

    :pswitch_22  #0x1
    check-cast p0, [I

    check-cast p1, Lcom/android/server/wm/Task;

    const/4 p1, 0x0

    aget v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, p1

    return-void

    :pswitch_2e  #0x0
    check-cast p0, Ljava/util/function/Consumer;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isLeafTaskFragment()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_68

    :cond_3c
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_45
    if-ltz v0, :cond_68

    iget-object v3, p1, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_59

    invoke-virtual {v3, p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    goto :goto_65

    :cond_59
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_65

    if-nez v2, :cond_65

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    move v2, v1

    :cond_65
    :goto_65
    add-int/lit8 v0, v0, -0x1

    goto :goto_45

    :cond_68
    :goto_68
    return-void

    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_2e  #00000000
        :pswitch_22  #00000001
        :pswitch_1b  #00000002
        :pswitch_13  #00000003
    .end packed-switch
.end method
