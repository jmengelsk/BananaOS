.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mBound:Z

.field public mCallback:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;

.field public final mComponent:Landroid/content/ComponentName;

.field public final mConnection:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;

.field public final mIAppServiceId:Ljava/lang/String;

.field public final mPendingAppLinkCommand:Ljava/util/List;

.field public final mPendingAppLinkInfo:Ljava/util/List;

.field public mReconnecting:Z

.field public mService:Landroid/media/tv/interactive/ITvInteractiveAppService;

.field public final mSessionTokens:Ljava/util/List;


# direct methods
.method public static -$$Nest$maddPendingAppLink(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Landroid/media/tv/interactive/AppLinkInfo;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mPendingAppLinkInfo:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mSessionTokens:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mPendingAppLinkInfo:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mPendingAppLinkCommand:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mComponent:Landroid/content/ComponentName;

    new-instance v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p4, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;II)V

    iput-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mConnection:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;

    iput-object p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mIAppServiceId:Ljava/lang/String;

    return-void
.end method
