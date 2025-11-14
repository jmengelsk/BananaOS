.class public final Lcom/android/server/smartclip/SpenGestureManagerService$8;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$8;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$8;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_7

    goto :goto_41

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "broastcastInputContextChanged getRegisteredCallbackCount() = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SpenGestureManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :catch_28
    :goto_28
    if-lez v0, :cond_3c

    add-int/lit8 v0, v0, -0x1

    :try_start_2c
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;

    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;->onInputInfoChanged(Lcom/android/internal/inputmethod/IRemoteInputConnection;Landroid/view/inputmethod/EditorInfo;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_3b} :catch_28

    goto :goto_28

    :cond_3c
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_41
    return-void
.end method
