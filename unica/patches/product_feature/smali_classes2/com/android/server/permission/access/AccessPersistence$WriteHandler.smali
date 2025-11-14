.class public final Lcom/android/server/permission/access/AccessPersistence$WriteHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/permission/access/AccessPersistence;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/AccessPersistence;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/permission/access/AccessPersistence$WriteHandler;->this$0:Lcom/android/server/permission/access/AccessPersistence;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 0

    iget p1, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/android/server/permission/access/AccessPersistence$WriteHandler;->this$0:Lcom/android/server/permission/access/AccessPersistence;

    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/AccessPersistence;->writePendingState(I)V

    return-void
.end method
