.class public final synthetic Lcom/android/server/wm/DexController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DexController;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DexController;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/DexController;

    iput-object p2, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda8;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/DexController;

    iget-object v1, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda8;->f$1:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/wm/DexController;->mLastWarningToast:Landroid/widget/Toast;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    :cond_d
    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/wm/DexController;->mLastWarningToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
