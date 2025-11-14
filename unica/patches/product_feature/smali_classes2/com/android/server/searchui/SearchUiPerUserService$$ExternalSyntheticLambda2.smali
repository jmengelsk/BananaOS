.class public final synthetic Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/searchui/SearchUiPerUserService;

.field public final synthetic f$1:Landroid/app/search/SearchSessionId;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/searchui/SearchUiPerUserService;Landroid/app/search/SearchSessionId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/searchui/SearchUiPerUserService;

    iput-object p2, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda2;->f$1:Landroid/app/search/SearchSessionId;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/searchui/SearchUiPerUserService;

    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda2;->f$1:Landroid/app/search/SearchSessionId;

    iget-object v1, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/server/searchui/SearchUiPerUserService;->onDestroyLocked(Landroid/app/search/SearchSessionId;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
