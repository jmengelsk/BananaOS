.class public final synthetic Lcom/android/server/wm/DesktopCompatPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DesktopCompatPolicy$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput p2, p0, Lcom/android/server/wm/DesktopCompatPolicy$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/DesktopCompatPolicy$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget p0, p0, Lcom/android/server/wm/DesktopCompatPolicy$$ExternalSyntheticLambda0;->f$1:I

    sget-object v1, Lcom/android/server/wm/DesktopCompatPolicy$ToastManager;->sInstance:Lcom/android/server/wm/DesktopCompatPolicy$ToastManager;

    iget-object v2, v1, Lcom/android/server/wm/DesktopCompatPolicy$ToastManager;->mLastToast:Landroid/widget/Toast;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    :cond_d
    const/4 v2, 0x1

    invoke-static {v0, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    iput-object p0, v1, Lcom/android/server/wm/DesktopCompatPolicy$ToastManager;->mLastToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    if-nez p0, :cond_20

    iget-object p0, v1, Lcom/android/server/wm/DesktopCompatPolicy$ToastManager;->mLastToast:Landroid/widget/Toast;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Toast;->semSetPreferredDisplayType(I)V

    :cond_20
    iget-object p0, v1, Lcom/android/server/wm/DesktopCompatPolicy$ToastManager;->mLastToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
