.class public final synthetic Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/Task;

.field public final synthetic f$1:[Lcom/android/server/wm/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;[Lcom/android/server/wm/Task;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/Task;

    iput-object p2, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda5;->f$1:[Lcom/android/server/wm/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/Task;

    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda5;->f$1:[Lcom/android/server/wm/Task;

    check-cast p1, Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    aput-object p1, p0, v1

    const/4 v1, 0x1

    :cond_1
    return v1

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/Task;

    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda5;->f$1:[Lcom/android/server/wm/Task;

    check-cast p1, Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    aput-object p1, p0, v1

    const/4 v1, 0x1

    :cond_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
