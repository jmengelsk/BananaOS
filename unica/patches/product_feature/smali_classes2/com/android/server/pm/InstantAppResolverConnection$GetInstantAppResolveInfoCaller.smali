.class public final Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;
.super Landroid/util/TimedRemoteCaller;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCallback:Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller$1;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-boolean v0, Lcom/android/server/pm/InstantAppResolverConnection;->DEBUG_INSTANT:Z

    const-wide/16 v0, 0x64

    invoke-direct {p0, v0, v1}, Landroid/util/TimedRemoteCaller;-><init>(J)V

    new-instance v0, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller$1;-><init>(Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;)V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;->mCallback:Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller$1;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;Ljava/lang/Object;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/util/TimedRemoteCaller;->onRemoteMethodResult(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public final getInstantAppResolveInfoList(Landroid/app/IInstantAppResolver;Landroid/content/pm/InstantAppRequestInfo;)Ljava/util/List;
    .locals 2

    invoke-virtual {p0}, Landroid/util/TimedRemoteCaller;->onBeforeRemoteCall()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;->mCallback:Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller$1;

    invoke-interface {p1, p2, v0, v1}, Landroid/app/IInstantAppResolver;->getInstantAppResolveInfoList(Landroid/content/pm/InstantAppRequestInfo;ILandroid/os/IRemoteCallback;)V

    invoke-virtual {p0, v0}, Landroid/util/TimedRemoteCaller;->getResultTimed(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
