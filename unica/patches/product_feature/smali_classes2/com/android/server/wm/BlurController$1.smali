.class public final Lcom/android/server/wm/BlurController$1;
.super Landroid/view/TunnelModeEnabledListener;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/BlurController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BlurController;Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/wm/BlurController$1;->this$0:Lcom/android/server/wm/BlurController;

    invoke-direct {p0, p2}, Landroid/view/TunnelModeEnabledListener;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final onTunnelModeEnabledChanged(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/BlurController$1;->this$0:Lcom/android/server/wm/BlurController;

    iput-boolean p1, p0, Lcom/android/server/wm/BlurController;->mTunnelModeEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/wm/BlurController;->updateBlurEnabled()V

    return-void
.end method
