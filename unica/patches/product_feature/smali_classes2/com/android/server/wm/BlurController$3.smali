.class public final Lcom/android/server/wm/BlurController$3;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/BlurController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BlurController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/BlurController$3;->this$0:Lcom/android/server/wm/BlurController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 5

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/android/server/wm/BlurController$3;->this$0:Lcom/android/server/wm/BlurController;

    iget-object v0, p1, Lcom/android/server/wm/BlurController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "disable_window_blurs"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    move v2, v1

    :cond_17
    iput-boolean v2, p1, Lcom/android/server/wm/BlurController;->mBlurDisabledSetting:Z

    iget-object p0, p0, Lcom/android/server/wm/BlurController$3;->this$0:Lcom/android/server/wm/BlurController;

    invoke-virtual {p0}, Lcom/android/server/wm/BlurController;->updateBlurEnabled()V

    return-void
.end method
