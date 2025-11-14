.class public final synthetic Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Landroid/view/translation/TranslationContext;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/internal/os/IResultReceiver;


# direct methods
.method public synthetic constructor <init>(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda1;->f$0:Landroid/view/translation/TranslationContext;

    iput p2, p0, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda1;->f$2:Lcom/android/internal/os/IResultReceiver;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda1;->f$0:Landroid/view/translation/TranslationContext;

    iget v1, p0, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda1;->f$1:I

    iget-object p0, p0, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda1;->f$2:Lcom/android/internal/os/IResultReceiver;

    check-cast p1, Landroid/service/translation/ITranslationService;

    sget v2, Lcom/android/server/translation/RemoteTranslationService;->$r8$clinit:I

    invoke-interface {p1, v0, v1, p0}, Landroid/service/translation/ITranslationService;->onCreateTranslationSession(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;)V

    return-void
.end method
