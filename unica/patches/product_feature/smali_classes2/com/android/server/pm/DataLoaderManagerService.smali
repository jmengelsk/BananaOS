.class public Lcom/android/server/pm/DataLoaderManagerService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mBinderService:Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mServiceConnections:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService;->mServiceConnections:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/pm/DataLoaderManagerService;->mContext:Landroid/content/Context;

    const-string p1, "DataLoaderManager"

    invoke-static {p1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object p1

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;

    invoke-direct {p1, p0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;-><init>(Lcom/android/server/pm/DataLoaderManagerService;)V

    iput-object p1, p0, Lcom/android/server/pm/DataLoaderManagerService;->mBinderService:Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;

    return-void
.end method


# virtual methods
.method public final onStart()V
    .registers 3

    const-string/jumbo v0, "dataloader_manager"

    iget-object v1, p0, Lcom/android/server/pm/DataLoaderManagerService;->mBinderService:Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
