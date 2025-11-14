.class public final synthetic Lcom/android/server/wm/DisplayRotationCompatPolicy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayRotationCompatPolicy;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayRotationCompatPolicy;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    iput p2, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    iget v1, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$$ExternalSyntheticLambda1;->f$1:I

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationCompatPolicy$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
