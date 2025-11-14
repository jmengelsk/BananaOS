.class public final synthetic Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayHashController;

.field public final synthetic f$1:Landroid/view/displayhash/DisplayHash;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayHashController;Landroid/view/displayhash/DisplayHash;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/DisplayHashController;

    iput-object p2, p0, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda2;->f$1:Landroid/view/displayhash/DisplayHash;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/DisplayHashController;

    iget-object p0, p0, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda2;->f$1:Landroid/view/displayhash/DisplayHash;

    check-cast p1, Landroid/service/displayhash/IDisplayHashingService;

    check-cast p2, Landroid/os/RemoteCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v0, Lcom/android/server/wm/DisplayHashController;->mSalt:[B

    invoke-interface {p1, v0, p0, p2}, Landroid/service/displayhash/IDisplayHashingService;->verifyDisplayHash([BLandroid/view/displayhash/DisplayHash;Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "WindowManager"

    const-string p1, "Failed to invoke verifyDisplayHash command"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
