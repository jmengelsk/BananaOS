.class public final Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$3;
.super Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$3;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionSessionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$3;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    return-object p0
.end method

.method public final onSetUiHints(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public final onVoiceSessionHidden()V
    .registers 1

    return-void
.end method

.method public final onVoiceSessionShown()V
    .registers 1

    return-void
.end method

.method public final onVoiceSessionWindowVisibilityChanged(Z)V
    .registers 2

    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$3;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p0

    const/16 p1, 0x13

    invoke-virtual {p0, p1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    :cond_f
    return-void
.end method
