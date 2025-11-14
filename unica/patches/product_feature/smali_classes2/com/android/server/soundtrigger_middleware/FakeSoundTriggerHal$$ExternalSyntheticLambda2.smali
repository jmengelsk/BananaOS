.class public final synthetic Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .registers 2

    iget p0, p0, Lcom/android/server/soundtrigger_middleware/FakeSoundTriggerHal$$ExternalSyntheticLambda2;->$r8$classId:I

    check-cast p1, Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;

    packed-switch p0, :pswitch_data_18

    invoke-interface {p1}, Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;->onResourcesAvailable()V

    return-void

    :pswitch_b  #0x2
    invoke-interface {p1}, Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;->onResourcesAvailable()V

    return-void

    :pswitch_f  #0x1
    invoke-interface {p1}, Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;->onResourcesAvailable()V

    return-void

    :pswitch_13  #0x0
    invoke-interface {p1}, Landroid/hardware/soundtrigger3/ISoundTriggerHwGlobalCallback;->onResourcesAvailable()V

    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_13  #00000000
        :pswitch_f  #00000001
        :pswitch_b  #00000002
    .end packed-switch
.end method
