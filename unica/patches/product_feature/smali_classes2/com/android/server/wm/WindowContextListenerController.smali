.class public final Lcom/android/server/wm/WindowContextListenerController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field final mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final assertCallerCanModifyListener(IZLandroid/os/IBinder;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    const/4 p1, 0x2

    aget-boolean p0, p0, p1

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide p2, 0x1e07d3211d823694L    # 5.171544319701256E-164

    const/4 v0, 0x0

    invoke-static {p0, p2, p3, p1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    return p1

    :cond_1
    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mWpc:Lcom/android/server/wm/WindowProcessController;

    iget p2, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    if-ne p1, p2, :cond_3

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p3, "Uid mismatch. Caller uid is "

    const-string v0, ", while the listener\'s owner is from "

    invoke-static {p1, p3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final getContainer(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mContainer:Lcom/android/server/wm/WindowContainer;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final registerWindowContainerListener(Lcom/android/server/wm/WindowProcessController;Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;ILandroid/os/Bundle;Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;-><init>(Lcom/android/server/wm/WindowContextListenerController;Lcom/android/server/wm/WindowProcessController;Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;ILandroid/os/Bundle;)V

    invoke-virtual {v1, p6}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->register(Z)V

    return-void

    :cond_0
    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowContextListenerController;->updateContainerForWindowContextListener(Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "WindowContextListenerController{mListeners=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-eq v2, v3, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "]}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateContainerForWindowContextListener(Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->updateContainer(Lcom/android/server/wm/WindowContainer;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t find listener for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
