.class public final synthetic Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    iput p1, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda4;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_30

    check-cast p0, Lcom/android/server/wm/Task;

    check-cast p1, Lcom/android/server/wm/Task;

    if-ne p1, p0, :cond_e

    goto :goto_1a

    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_1c

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p0

    if-eqz p0, :cond_1c

    :goto_1a
    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0

    :pswitch_1e  #0x1
    check-cast p0, [Lcom/android/server/wm/Task;

    check-cast p1, Lcom/android/server/wm/Task;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const/4 p0, 0x1

    return p0

    :pswitch_27  #0x0
    check-cast p0, [Lcom/android/server/wm/Task;

    check-cast p1, Lcom/android/server/wm/Task;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const/4 p0, 0x1

    return p0

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_27  #00000000
        :pswitch_1e  #00000001
    .end packed-switch
.end method
