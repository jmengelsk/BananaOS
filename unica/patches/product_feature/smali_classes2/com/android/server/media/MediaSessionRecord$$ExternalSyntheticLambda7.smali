.class public final synthetic Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/MediaSessionRecord;

.field public final synthetic f$1:Landroid/media/session/ISessionControllerCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/media/MediaSessionRecord;

    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda7;->f$1:Landroid/media/session/ISessionControllerCallback;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/media/MediaSessionRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda7;->f$1:Landroid/media/session/ISessionControllerCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/media/MediaSessionRecord;->unregisterCallback(Landroid/media/session/ISessionControllerCallback;)V

    return-void
.end method
