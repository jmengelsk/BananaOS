.class public final Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;
.super Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDrawnListener:Lcom/android/server/policy/PhoneWindowManager$1;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;->mDrawnListener:Lcom/android/server/policy/PhoneWindowManager$1;

    return-void
.end method


# virtual methods
.method public final onDrawn()V
    .locals 2

    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;->mDrawnListener:Lcom/android/server/policy/PhoneWindowManager$1;

    if-eqz p0, :cond_1

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PhoneWindowManager"

    const-string/jumbo v1, "mKeyguardDelegate.ShowListener.onDrawn."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
