.class public final synthetic Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/media/RoutingSessionInfo$Builder;


# direct methods
.method public synthetic constructor <init>(Landroid/media/RoutingSessionInfo$Builder;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda1;->f$0:Landroid/media/RoutingSessionInfo$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda1;->f$0:Landroid/media/RoutingSessionInfo$Builder;

    check-cast p1, Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Landroid/media/RoutingSessionInfo$Builder;->addDeselectableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    return-void

    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/media/RoutingSessionInfo$Builder;->addSelectableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    return-void

    :pswitch_1
    invoke-virtual {p0, p1}, Landroid/media/RoutingSessionInfo$Builder;->addSelectedRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    return-void

    :pswitch_2
    invoke-virtual {p0, p1}, Landroid/media/RoutingSessionInfo$Builder;->addTransferableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
