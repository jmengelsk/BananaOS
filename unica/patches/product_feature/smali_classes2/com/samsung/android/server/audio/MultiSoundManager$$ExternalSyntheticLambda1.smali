.class public final synthetic Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/server/audio/MultiSoundManager;

.field public final synthetic f$1:Lcom/samsung/android/media/AudioParameter;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/audio/MultiSoundManager;Lcom/samsung/android/media/AudioParameter;I)V
    .registers 4

    iput p3, p0, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    iput-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/media/AudioParameter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_22

    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/media/AudioParameter;

    iget-object v0, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    return-void

    :pswitch_13  #0x0
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/media/AudioParameter;

    iget-object v0, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_13  #00000000
    .end packed-switch
.end method
