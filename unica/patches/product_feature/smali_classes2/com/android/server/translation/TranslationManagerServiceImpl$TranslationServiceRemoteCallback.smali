.class public final Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;
.super Landroid/view/translation/ITranslationServiceCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/translation/TranslationManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/translation/TranslationManagerServiceImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;->this$0:Lcom/android/server/translation/TranslationManagerServiceImpl;

    invoke-direct {p0}, Landroid/view/translation/ITranslationServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final updateTranslationCapability(Landroid/view/translation/TranslationCapability;)V
    .registers 4

    if-nez p1, :cond_c

    const-string/jumbo p0, "TranslationManagerServiceImpl"

    const-string/jumbo p1, "received a null TranslationCapability from TranslationService."

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;->this$0:Lcom/android/server/translation/TranslationManagerServiceImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "translation_capabilities"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    new-instance p1, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0}, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/BiConsumer;)V

    return-void
.end method
