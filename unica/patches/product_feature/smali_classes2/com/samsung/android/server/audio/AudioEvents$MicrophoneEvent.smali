.class public final Lcom/samsung/android/server/audio/AudioEvents$MicrophoneEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public mIsEnableMute:Z

.field public mPackage:Ljava/lang/String;

.field public mRequesterPid:I


# direct methods
.method public synthetic constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/server/audio/AudioEvents$MicrophoneEvent;->$r8$classId:I

    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/audio/AudioEvents$MicrophoneEvent;->$r8$classId:I

    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/audio/AudioEvents$MicrophoneEvent;->mPackage:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/server/audio/AudioEvents$MicrophoneEvent;->mRequesterPid:I

    iput-boolean p3, p0, Lcom/samsung/android/server/audio/AudioEvents$MicrophoneEvent;->mIsEnableMute:Z

    return-void
.end method


# virtual methods
.method public final eventToString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/samsung/android/server/audio/AudioEvents$MicrophoneEvent;->$r8$classId:I

    packed-switch v0, :pswitch_data_52

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setRingerMode(mode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/server/audio/AudioEvents$MicrophoneEvent;->mRequesterPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " external:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/audio/AudioEvents$MicrophoneEvent;->mIsEnableMute:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioEvents$MicrophoneEvent;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2b  #0x0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setMicrophoneMute() from package="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioEvents$MicrophoneEvent;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/audio/AudioEvents$MicrophoneEvent;->mRequesterPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isisEnableMute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/server/audio/AudioEvents$MicrophoneEvent;->mIsEnableMute:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_2b  #00000000
    .end packed-switch
.end method
