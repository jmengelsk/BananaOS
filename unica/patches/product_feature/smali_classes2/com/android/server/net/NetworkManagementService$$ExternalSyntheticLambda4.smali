.class public final synthetic Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:J

.field public final synthetic f$2:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;J[Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda4;->f$1:J

    iput-object p4, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda4;->f$2:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda4;->f$1:J

    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda4;->f$2:[Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2, p0}, Landroid/net/INetworkManagementEventObserver;->interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V

    return-void
.end method
