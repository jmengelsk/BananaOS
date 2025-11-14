.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda6;->f$0:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda6;->f$0:Z

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda6;->f$0:Z

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda6;->f$0:Z

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    check-cast p1, Lcom/android/server/wm/Task;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v0

    if-ne v0, v1, :cond_1

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/Task;->isCompatible(II)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
