.class public final synthetic Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    iput-boolean p2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    iget-boolean p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda1;->f$1:Z

    check-cast p1, Landroid/speech/IRecognitionService;

    sget v1, Lcom/android/server/speech/RemoteSpeechRecognitionService;->$r8$clinit:I

    invoke-interface {p1, v0, p0}, Landroid/speech/IRecognitionService;->cancel(Landroid/speech/IRecognitionListener;Z)V

    return-void
.end method
