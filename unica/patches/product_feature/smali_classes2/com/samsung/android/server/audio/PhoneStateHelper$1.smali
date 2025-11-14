.class public final Lcom/samsung/android/server/audio/PhoneStateHelper$1;
.super Landroid/telephony/PhoneStateListener;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/audio/PhoneStateHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/PhoneStateHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/audio/PhoneStateHelper$1;->this$0:Lcom/samsung/android/server/audio/PhoneStateHelper;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 6

    if-eqz p1, :cond_6a

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/server/audio/PhoneStateHelper$1;->this$0:Lcom/samsung/android/server/audio/PhoneStateHelper;

    iget v1, v1, Lcom/samsung/android/server/audio/PhoneStateHelper;->mRilState:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_39

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "RIL State is changed: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/server/audio/PhoneStateHelper$1;->this$0:Lcom/samsung/android/server/audio/PhoneStateHelper;

    iget v3, v3, Lcom/samsung/android/server/audio/PhoneStateHelper;->mRilState:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AS.PhoneStateHelper"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v2, :cond_35

    const-string/jumbo v1, "l_call_ril_state_connected=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_35
    iget-object v1, p0, Lcom/samsung/android/server/audio/PhoneStateHelper$1;->this$0:Lcom/samsung/android/server/audio/PhoneStateHelper;

    iput v0, v1, Lcom/samsung/android/server/audio/PhoneStateHelper;->mRilState:I

    :cond_39
    iget-object v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper$1;->this$0:Lcom/samsung/android/server/audio/PhoneStateHelper;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq p1, v2, :cond_4d

    const/16 v0, 0x10

    if-eq p1, v0, :cond_4d

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4c

    goto :goto_4d

    :cond_4c
    const/4 v2, 0x0

    :cond_4d
    :goto_4d
    iget-object p1, p0, Lcom/samsung/android/server/audio/PhoneStateHelper$1;->this$0:Lcom/samsung/android/server/audio/PhoneStateHelper;

    iget-boolean p1, p1, Lcom/samsung/android/server/audio/PhoneStateHelper;->mIs2GTDMANetwork:Z

    if-eq p1, v2, :cond_6a

    if-eqz v2, :cond_59

    const-string/jumbo p1, "true"

    goto :goto_5c

    :cond_59
    const-string/jumbo p1, "false"

    :goto_5c
    const-string/jumbo v0, "l_call_2g_tdma="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper$1;->this$0:Lcom/samsung/android/server/audio/PhoneStateHelper;

    iput-boolean v2, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mIs2GTDMANetwork:Z

    :cond_6a
    return-void
.end method
