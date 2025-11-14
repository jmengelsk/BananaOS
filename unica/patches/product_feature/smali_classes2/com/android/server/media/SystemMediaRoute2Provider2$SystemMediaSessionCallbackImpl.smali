.class public final Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/media/MediaRoute2ProviderServiceProxy$SystemMediaSessionCallback;


# instance fields
.field public final mClientPackageName:Ljava/lang/String;

.field public final mProviderId:Ljava/lang/String;

.field public final mRequestId:J

.field public mSessionRecord:Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;

.field public final synthetic this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;


# direct methods
.method public constructor <init>(Lcom/android/server/media/SystemMediaRoute2Provider2;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->mProviderId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->mRequestId:J

    iput-object p5, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->mClientPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onRequestFailed(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    iget-object v0, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSessionReleased()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    iget-object v0, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSessionUpdate(Landroid/media/RoutingSessionInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    iget-object v0, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;Landroid/media/RoutingSessionInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
