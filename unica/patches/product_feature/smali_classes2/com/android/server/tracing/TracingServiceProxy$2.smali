.class Lcom/android/server/tracing/TracingServiceProxy$2;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/os/IMessenger;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tracing/TracingServiceProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/tracing/TracingServiceProxy;Landroid/content/Context;Landroid/content/Intent;ILcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda0;)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/tracing/TracingServiceProxy$2;->this$0:Lcom/android/server/tracing/TracingServiceProxy;

    move-object p1, p2

    move-object p2, p3

    const/16 p3, 0x21

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    return-void
.end method


# virtual methods
.method public final getAutoDisconnectTimeoutMs()J
    .registers 3

    const-wide/16 v0, 0x3a98

    return-wide v0
.end method

.method public final getRequestTimeoutMs()J
    .registers 3

    const-wide/16 v0, 0x2710

    return-wide v0
.end method
