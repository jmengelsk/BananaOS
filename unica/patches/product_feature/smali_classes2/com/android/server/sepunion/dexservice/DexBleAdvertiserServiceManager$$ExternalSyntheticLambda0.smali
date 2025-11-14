.class public final synthetic Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;

    packed-switch v0, :pswitch_data_1a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "DexBleAdvertiserServiceManager"

    const-string v1, "Binder supposed established connection but actual connection to service timed out, trying again"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->retryConnectionWithBackoff()V

    return-void

    :pswitch_15  #0x0
    invoke-virtual {p0}, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->bindService()V

    return-void

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_15  #00000000
    .end packed-switch
.end method
