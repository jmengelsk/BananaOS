.class public final synthetic Lcom/android/server/profcollect/Utils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/profcollect/IProfCollectd;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/profcollect/IProfCollectd;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/profcollect/Utils$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/profcollect/IProfCollectd;

    iput-object p2, p0, Lcom/android/server/profcollect/Utils$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/profcollect/Utils$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/profcollect/IProfCollectd;

    iget-object p0, p0, Lcom/android/server/profcollect/Utils$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    :try_start_4
    check-cast v0, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;

    invoke-virtual {v0, p0}, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;->trace_system(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to initiate trace: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "ProfcollectForwardingService"

    invoke-static {p0, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method
