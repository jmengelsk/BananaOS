.class public final Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final iface:Ljava/lang/String;

.field public final limit:J

.field public final warning:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->iface:Ljava/lang/String;

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->warning:J

    iput-wide p3, p0, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->limit:J

    return-void
.end method
