.class public final synthetic Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TrustedPresentationListenerController;

.field public final synthetic f$1:Landroid/window/ITrustedPresentationListener;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TrustedPresentationListenerController;Landroid/window/ITrustedPresentationListener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/TrustedPresentationListenerController;

    iput-object p2, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda1;->f$1:Landroid/window/ITrustedPresentationListener;

    iput p3, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/TrustedPresentationListenerController;

    iget-object v1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda1;->f$1:Landroid/window/ITrustedPresentationListener;

    iget p0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda1;->f$2:I

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_TPL_enabled:[Z

    const/4 v3, 0x0

    aget-boolean v4, v2, v3

    const/4 v5, 0x4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    int-to-long v6, p0

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v6, 0x333969f592d6333aL    # 6.1777777016535966E-62

    invoke-static {v8, v6, v7, v5, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    iget-object v4, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroid/window/ITrustedPresentationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mUniqueListeners:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;

    if-nez v7, :cond_1

    aget-boolean v2, v2, v5

    if-eqz v2, :cond_3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    int-to-long v2, p0

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v2, 0x2fd0fb8da7ea3c5fL    # 2.2916383957592763E-78

    invoke-static {p0, v2, v3, v5, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget v1, v7, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->mInstances:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v7, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->mInstances:I

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v7, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->mListenerBinder:Landroid/os/IBinder;

    invoke-interface {v1, v7, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v1, v4, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mUniqueListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {v4, v6, p0}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->removeListeners(Landroid/os/IBinder;Ljava/util/Optional;)V

    :cond_3
    :goto_1
    iget-object p0, v4, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mWindowToListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mWindowInfosListener:Lcom/android/server/wm/TrustedPresentationListenerController$1;

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/window/WindowInfosListener;->unregister()V

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mWindowInfosListener:Lcom/android/server/wm/TrustedPresentationListenerController$1;

    iput-object p0, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mLastWindowHandles:Landroid/util/Pair;

    :cond_5
    :goto_2
    return-void
.end method
