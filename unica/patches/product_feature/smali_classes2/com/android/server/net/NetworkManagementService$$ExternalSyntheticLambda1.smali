.class public final synthetic Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    iput p1, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda1;->f$1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    .locals 1

    iget v0, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda1;->f$1:Z

    invoke-interface {p1, v0, p0}, Landroid/net/INetworkManagementEventObserver;->interfaceLinkStateChanged(Ljava/lang/String;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda1;->f$1:Z

    invoke-interface {p1, v0, p0}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
