.class public final Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;
.super Landroid/speech/IRecognitionListener$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mOnSessionFailure:Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;

.field public final mOnSessionSuccess:Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;

.field public final mRemoteListener:Landroid/speech/IRecognitionListener;


# direct methods
.method public constructor <init>(Landroid/speech/IRecognitionListener;Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;)V
    .locals 0

    invoke-direct {p0}, Landroid/speech/IRecognitionListener$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    iput-object p2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mOnSessionSuccess:Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;

    iput-object p3, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mOnSessionFailure:Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;

    return-void
.end method


# virtual methods
.method public final onBeginningOfSpeech()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    invoke-interface {p0}, Landroid/speech/IRecognitionListener;->onBeginningOfSpeech()V

    return-void
.end method

.method public final onBufferReceived([B)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    invoke-interface {p0, p1}, Landroid/speech/IRecognitionListener;->onBufferReceived([B)V

    return-void
.end method

.method public final onEndOfSegmentedSession()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mOnSessionSuccess:Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;

    invoke-virtual {v0}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;->run()V

    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    invoke-interface {p0}, Landroid/speech/IRecognitionListener;->onEndOfSegmentedSession()V

    return-void
.end method

.method public final onEndOfSpeech()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    invoke-interface {p0}, Landroid/speech/IRecognitionListener;->onEndOfSpeech()V

    return-void
.end method

.method public final onError(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mOnSessionFailure:Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;

    invoke-virtual {v0}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;->run()V

    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    invoke-interface {p0, p1}, Landroid/speech/IRecognitionListener;->onError(I)V

    return-void
.end method

.method public final onEvent(ILandroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    invoke-interface {p0, p1, p2}, Landroid/speech/IRecognitionListener;->onEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final onLanguageDetection(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    invoke-interface {p0, p1}, Landroid/speech/IRecognitionListener;->onLanguageDetection(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onPartialResults(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    invoke-interface {p0, p1}, Landroid/speech/IRecognitionListener;->onPartialResults(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    invoke-interface {p0, p1}, Landroid/speech/IRecognitionListener;->onReadyForSpeech(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onResults(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mOnSessionSuccess:Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;

    invoke-virtual {v0}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;->run()V

    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    invoke-interface {p0, p1}, Landroid/speech/IRecognitionListener;->onResults(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onRmsChanged(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    invoke-interface {p0, p1}, Landroid/speech/IRecognitionListener;->onRmsChanged(F)V

    return-void
.end method

.method public final onSegmentResults(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;->mRemoteListener:Landroid/speech/IRecognitionListener;

    invoke-interface {p0, p1}, Landroid/speech/IRecognitionListener;->onSegmentResults(Landroid/os/Bundle;)V

    return-void
.end method
