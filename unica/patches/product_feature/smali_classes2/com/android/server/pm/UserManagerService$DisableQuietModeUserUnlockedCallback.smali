.class public final Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;
.super Landroid/os/IProgressListener$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mTarget:Landroid/content/IntentSender;

.field public final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;Landroid/content/IntentSender;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Landroid/os/IProgressListener$Stub;-><init>()V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;->mTarget:Landroid/content/IntentSender;

    return-void
.end method


# virtual methods
.method public final onFinished(ILandroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;->this$0:Lcom/android/server/pm/UserManagerService;

    iget-object p1, p1, Lcom/android/server/pm/UserManagerService;->mHandler:Lcom/android/server/pm/UserManagerService$MainHandler;

    new-instance p2, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onProgress(IILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onStarted(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
