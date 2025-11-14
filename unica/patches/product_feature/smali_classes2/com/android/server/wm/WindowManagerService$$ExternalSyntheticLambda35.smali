.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iput p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda35;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda35;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda35;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 8

    iget v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda35;->$r8$classId:I

    packed-switch v0, :pswitch_data_90

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda35;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/io/PrintWriter;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda35;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/io/FileDescriptor;

    check-cast p1, Lcom/android/server/wm/WindowState;

    sget v1, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    const-string v1, "---------------------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    :try_start_20
    new-instance v1, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v1}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_37
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_43

    :try_start_25
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/IWindow;->dumpWindow(Landroid/os/ParcelFileDescriptor;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_39

    :try_start_33
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_36} :catch_43

    goto :goto_5a

    :catch_37
    move-exception p0

    goto :goto_49

    :catchall_39
    move-exception p0

    :try_start_3a
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_42

    :catchall_3e
    move-exception p1

    :try_start_3f
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_42
    throw p0
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_43} :catch_37
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_43} :catch_43

    :catch_43
    const-string p0, "Got a RemoteException while dumping the window"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5a

    :goto_49
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Failure while dumping the window: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5a
    return-void

    :pswitch_5b  #0x0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda35;->f$0:Ljava/lang/Object;

    check-cast v0, [J

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda35;->f$1:Ljava/lang/Object;

    check-cast p0, [Lcom/android/server/wm/ActivityRecord;

    check-cast p1, Lcom/android/server/wm/TaskFragment;

    sget v1, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_8e

    invoke-static {}, Lcom/android/server/wm/WindowContainer;->alwaysTruePredicate()Ljava/util/function/Predicate;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_82

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_82

    iget-wide v2, v2, Lcom/android/server/wm/WindowState;->mCreateTime:J

    goto :goto_84

    :cond_82
    iget-wide v2, p1, Lcom/android/server/wm/ActivityRecord;->createTime:J

    :goto_84
    aget-wide v4, v0, v1

    cmp-long v4, v2, v4

    if-lez v4, :cond_8e

    aput-wide v2, v0, v1

    aput-object p1, p0, v1

    :cond_8e
    return-void

    nop

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_5b  #00000000
    .end packed-switch
.end method
