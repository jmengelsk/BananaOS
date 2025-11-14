.class public final synthetic Lcom/android/server/wm/TrustedPresentationListenerController$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TrustedPresentationListenerController$1;

.field public final synthetic f$1:[Landroid/view/InputWindowHandle;

.field public final synthetic f$2:[Landroid/window/WindowInfosListener$DisplayInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TrustedPresentationListenerController$1;[Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TrustedPresentationListenerController$1;

    iput-object p2, p0, Lcom/android/server/wm/TrustedPresentationListenerController$1$$ExternalSyntheticLambda0;->f$1:[Landroid/view/InputWindowHandle;

    iput-object p3, p0, Lcom/android/server/wm/TrustedPresentationListenerController$1$$ExternalSyntheticLambda0;->f$2:[Landroid/window/WindowInfosListener$DisplayInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TrustedPresentationListenerController$1;

    iget-object v1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$1$$ExternalSyntheticLambda0;->f$1:[Landroid/view/InputWindowHandle;

    iget-object p0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$1$$ExternalSyntheticLambda0;->f$2:[Landroid/window/WindowInfosListener$DisplayInfo;

    iget-object v0, v0, Lcom/android/server/wm/TrustedPresentationListenerController$1;->this$0:Lcom/android/server/wm/TrustedPresentationListenerController;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TrustedPresentationListenerController;->computeTpl(Landroid/util/Pair;)V

    return-void
.end method
