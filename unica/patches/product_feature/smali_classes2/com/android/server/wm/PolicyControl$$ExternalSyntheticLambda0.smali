.class public final synthetic Lcom/android/server/wm/PolicyControl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/PolicyControl$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget p0, p0, Lcom/android/server/wm/PolicyControl$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Lcom/android/server/wm/Task;

    packed-switch p0, :pswitch_data_30

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result p0

    if-nez p0, :cond_13

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p0

    if-eqz p0, :cond_1b

    :cond_13
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inFullImmersiveModeFreeform()Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0

    :pswitch_1d  #0x0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isDeskRootTask()Z

    move-result p0

    if-eqz p0, :cond_2e

    new-instance p0, Lcom/android/server/wm/PolicyControl$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/PolicyControl$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Predicate;)Z

    move-result p0

    goto :goto_2f

    :cond_2e
    const/4 p0, 0x0

    :goto_2f
    return p0

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_1d  #00000000
    .end packed-switch
.end method
