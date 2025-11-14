.class public final Lcom/android/server/wm/TrustedPresentationListenerController$1;
.super Landroid/window/WindowInfosListener;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/TrustedPresentationListenerController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TrustedPresentationListenerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$1;->this$0:Lcom/android/server/wm/TrustedPresentationListenerController;

    invoke-direct {p0}, Landroid/window/WindowInfosListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onWindowInfosChanged([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$1;->this$0:Lcom/android/server/wm/TrustedPresentationListenerController;

    iget-object v0, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/TrustedPresentationListenerController$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/TrustedPresentationListenerController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TrustedPresentationListenerController$1;[Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
