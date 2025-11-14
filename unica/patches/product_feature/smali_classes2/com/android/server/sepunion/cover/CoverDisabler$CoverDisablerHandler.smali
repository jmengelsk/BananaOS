.class public final Lcom/android/server/sepunion/cover/CoverDisabler$CoverDisablerHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverDisabler;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverDisabler;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverDisabler$CoverDisablerHandler;->this$0:Lcom/android/server/sepunion/cover/CoverDisabler;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 2

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_5

    goto :goto_14

    :cond_5
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverDisabler$CoverDisablerHandler;->this$0:Lcom/android/server/sepunion/cover/CoverDisabler;

    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverDisabler;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_14
    :goto_14
    return-void
.end method
