.class public final Lcom/android/server/pinner/PinnerService$3;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pinner/PinnerService;

.field public final synthetic val$userSetupCompleteUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/server/pinner/PinnerService;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pinner/PinnerService$3;->this$0:Lcom/android/server/pinner/PinnerService;

    iput-object p2, p0, Lcom/android/server/pinner/PinnerService$3;->val$userSetupCompleteUri:Landroid/net/Uri;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/pinner/PinnerService$3;->val$userSetupCompleteUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/pinner/PinnerService$3;->this$0:Lcom/android/server/pinner/PinnerService;

    iget p1, p0, Lcom/android/server/pinner/PinnerService;->mConfiguredHomePinBytes:I

    if-lez p1, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    new-instance p2, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, p0, v0, p1, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/pinner/PinnerService;->mPinnerHandler:Lcom/android/server/pinner/PinnerService$PinnerHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
