.class public final synthetic Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    iput p2, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda1;->$r8$classId:I

    iput p1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda1;->f$0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda1;->$r8$classId:I

    iget p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda1;->f$0:I

    packed-switch v0, :pswitch_data_24

    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    iget v0, p1, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    if-ne v0, p0, :cond_e

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return-object p1

    :pswitch_10  #0x0
    check-cast p1, Lcom/android/server/wm/DisplayArea;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_21

    iget v0, p1, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    if-ne v0, p0, :cond_21

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object p0

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    :goto_22
    return-object p0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_10  #00000000
    .end packed-switch
.end method
