.class public final synthetic Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z

.field public final synthetic f$2:J

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(IIJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda0;->f$0:I

    iput-boolean p5, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda0;->f$1:Z

    iput-wide p3, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda0;->f$2:J

    iput p2, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    .locals 6

    iget v1, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda0;->f$0:I

    iget-boolean v2, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda0;->f$1:Z

    iget-wide v3, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda0;->f$2:J

    iget v5, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda0;->f$3:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkManagementEventObserver;->interfaceClassDataActivityChanged(IZJI)V

    return-void
.end method
