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
    .registers 3

    iput p2, p0, Lcom/android/server/profcollect/Utils$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/profcollect/Utils$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/profcollect/IProfCollectd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/server/profcollect/Utils$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/profcollect/Utils$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/profcollect/IProfCollectd;

    packed-switch v0, :pswitch_data_38

    const/16 v0, 0x1388

    int-to-float v0, v0

    :try_start_a
    check-cast p0, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;

    invoke-virtual {p0, v0}, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;->trace_process(F)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_1e

    :catch_10
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to initiate trace: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "ProfcollectForwardingService"

    invoke-static {p0, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1e
    return-void

    :pswitch_1f  #0x0
    const-string/jumbo v0, "dex2oat"

    :try_start_22
    check-cast p0, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;

    invoke-virtual {p0, v0}, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;->trace_system(Ljava/lang/String;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_28
    .catch Landroid/os/ServiceSpecificException; {:try_start_22 .. :try_end_27} :catch_28

    goto :goto_36

    :catch_28
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to initiate trace: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "ProfcollectForwardingService"

    invoke-static {p0, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_36
    return-void

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_1f  #00000000
    .end packed-switch
.end method
