.class final Lcom/android/server/translation/RemoteTranslationService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/service/translation/ITranslationService;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mIdleUnbindTimeoutMs:J

.field private final mRemoteCallback:Landroid/os/IBinder;

.field private final mRequestTimeoutMs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/translation/RemoteTranslationService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/os/IBinder;)V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.translation.TranslationService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    new-instance v7, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    const-wide/16 p0, 0x0

    iput-wide p0, v2, Lcom/android/server/translation/RemoteTranslationService;->mIdleUnbindTimeoutMs:J

    const/16 p0, 0x1388

    iput p0, v2, Lcom/android/server/translation/RemoteTranslationService;->mRequestTimeoutMs:I

    iput-object p2, v2, Lcom/android/server/translation/RemoteTranslationService;->mComponentName:Landroid/content/ComponentName;

    iput-object p4, v2, Lcom/android/server/translation/RemoteTranslationService;->mRemoteCallback:Landroid/os/IBinder;

    invoke-virtual {v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public final getAutoDisconnectTimeoutMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/translation/RemoteTranslationService;->mIdleUnbindTimeoutMs:J

    return-wide v0
.end method

.method public final onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .locals 1

    check-cast p1, Landroid/service/translation/ITranslationService;

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/translation/RemoteTranslationService;->mRemoteCallback:Landroid/os/IBinder;

    invoke-interface {p1, p0}, Landroid/service/translation/ITranslationService;->onConnected(Landroid/os/IBinder;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/service/translation/ITranslationService;->onDisconnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Exception calling onServiceConnectionStatusChanged("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "RemoteTranslationService"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
