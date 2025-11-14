.class public final synthetic Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TrustedPresentationListenerController;

.field public final synthetic f$1:Landroid/window/ITrustedPresentationListener;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/IBinder;

.field public final synthetic f$4:Landroid/window/TrustedPresentationThresholds;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TrustedPresentationListenerController;Landroid/window/ITrustedPresentationListener;ILandroid/os/IBinder;Landroid/window/TrustedPresentationThresholds;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TrustedPresentationListenerController;

    iput-object p2, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda0;->f$1:Landroid/window/ITrustedPresentationListener;

    iput p3, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda0;->f$3:Landroid/os/IBinder;

    iput-object p5, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda0;->f$4:Landroid/window/TrustedPresentationThresholds;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TrustedPresentationListenerController;

    iget-object v1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda0;->f$1:Landroid/window/ITrustedPresentationListener;

    iget v2, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda0;->f$3:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda0;->f$4:Landroid/window/TrustedPresentationThresholds;

    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_TPL_enabled:[Z

    const/4 v5, 0x0

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_34

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    int-to-long v5, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v4, v5, v7, v8}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v5, -0x5538b0cc98a8c4fcL

    const/4 v7, 0x4

    invoke-static {v9, v5, v6, v7, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_34
    iget-object v4, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    iget-object v5, v4, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mWindowToListeners:Landroid/util/ArrayMap;

    new-instance v6, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v3, v6}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;-><init>(Landroid/window/TrustedPresentationThresholds;ILandroid/window/ITrustedPresentationListener;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/window/ITrustedPresentationListener;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    iget-object v1, v4, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mUniqueListeners:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$$ExternalSyntheticLambda1;

    invoke-direct {v2, v4}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;)V

    invoke-virtual {v1, p0, v2}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;

    iget v1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->mInstances:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->mInstances:I

    iget-object p0, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mWindowInfosListener:Lcom/android/server/wm/TrustedPresentationListenerController$1;

    if-eqz p0, :cond_67

    goto :goto_74

    :cond_67
    new-instance p0, Lcom/android/server/wm/TrustedPresentationListenerController$1;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TrustedPresentationListenerController$1;-><init>(Lcom/android/server/wm/TrustedPresentationListenerController;)V

    iput-object p0, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mWindowInfosListener:Lcom/android/server/wm/TrustedPresentationListenerController$1;

    invoke-virtual {p0}, Landroid/window/WindowInfosListener;->register()Landroid/util/Pair;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mLastWindowHandles:Landroid/util/Pair;

    :goto_74
    iget-object p0, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mLastWindowHandles:Landroid/util/Pair;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TrustedPresentationListenerController;->computeTpl(Landroid/util/Pair;)V

    return-void
.end method
