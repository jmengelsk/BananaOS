.class public final Lcom/android/server/wm/WindowContainer$RemoteToken;
.super Landroid/window/IWindowContainerToken$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mWeakRef:Ljava/lang/ref/WeakReference;

.field public mWindowContainerToken:Landroid/window/WindowContainerToken;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowContainer;)V
    .registers 3

    invoke-direct {p0}, Landroid/window/IWindowContainerToken$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer$RemoteToken;->mWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    const/16 v0, 0x80

    const-string/jumbo v1, "RemoteToken{"

    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer$RemoteToken;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toWindowContainerToken()Landroid/window/WindowContainerToken;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$RemoteToken;->mWindowContainerToken:Landroid/window/WindowContainerToken;

    if-nez v0, :cond_b

    new-instance v0, Landroid/window/WindowContainerToken;

    invoke-direct {v0, p0}, Landroid/window/WindowContainerToken;-><init>(Landroid/window/IWindowContainerToken;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer$RemoteToken;->mWindowContainerToken:Landroid/window/WindowContainerToken;

    :cond_b
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer$RemoteToken;->mWindowContainerToken:Landroid/window/WindowContainerToken;

    return-object p0
.end method
