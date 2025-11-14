.class public final synthetic Lcom/android/server/profcollect/Utils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/profcollect/IProfCollectd;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/profcollect/IProfCollectd;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/profcollect/Utils$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/profcollect/Utils$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/profcollect/IProfCollectd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/server/profcollect/Utils$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/profcollect/Utils$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/profcollect/IProfCollectd;

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x1388

    int-to-float v0, v0

    :try_start_0
    check-cast p0, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;

    invoke-virtual {p0, v0}, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;->trace_process(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to initiate trace: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "ProfcollectForwardingService"

    invoke-static {p0, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "dex2oat"

    :try_start_1
    check-cast p0, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;

    invoke-virtual {p0, v0}, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;->trace_system(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to initiate trace: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "ProfcollectForwardingService"

    invoke-static {p0, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
