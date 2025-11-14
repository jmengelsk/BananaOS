.class public final synthetic Lcom/android/server/policy/DisplayFoldController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/DisplayFoldController;

.field public final synthetic f$1:Landroid/view/IDisplayFoldListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/DisplayFoldController;Landroid/view/IDisplayFoldListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/DisplayFoldController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/policy/DisplayFoldController;

    iput-object p2, p0, Lcom/android/server/policy/DisplayFoldController$$ExternalSyntheticLambda1;->f$1:Landroid/view/IDisplayFoldListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/policy/DisplayFoldController;

    iget-object p0, p0, Lcom/android/server/policy/DisplayFoldController$$ExternalSyntheticLambda1;->f$1:Landroid/view/IDisplayFoldListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_7
    iget-object v0, v0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/view/IDisplayFoldListener;->onDisplayFoldChanged(IZ)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method
