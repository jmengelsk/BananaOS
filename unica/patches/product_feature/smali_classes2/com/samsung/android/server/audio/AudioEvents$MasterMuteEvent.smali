.class public final Lcom/samsung/android/server/audio/AudioEvents$MasterMuteEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCaller:Ljava/lang/String;

.field public final mFlags:I

.field public final mIsMute:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    iput p1, p0, Lcom/samsung/android/server/audio/AudioEvents$MasterMuteEvent;->mIsMute:I

    iput p2, p0, Lcom/samsung/android/server/audio/AudioEvents$MasterMuteEvent;->mFlags:I

    iput-object p3, p0, Lcom/samsung/android/server/audio/AudioEvents$MasterMuteEvent;->mCaller:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final eventToString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setMasterMute(mute:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/server/audio/AudioEvents$MasterMuteEvent;->mIsMute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " flags:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/audio/AudioEvents$MasterMuteEvent;->mFlags:I

    const-string v2, ") from "

    invoke-static {v1, v0, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioEvents$MasterMuteEvent;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
