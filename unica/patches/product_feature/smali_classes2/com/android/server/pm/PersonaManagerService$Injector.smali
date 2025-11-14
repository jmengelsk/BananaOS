.class public final Lcom/android/server/pm/PersonaManagerService$Injector;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDataDir:Ljava/io/File;

.field public final mObject:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerTracedLock;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mPm:Lcom/android/server/pm/PackageManagerService;

    iput-object p3, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mObject:Lcom/android/server/pm/PackageManagerTracedLock;

    iput-object p4, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mDataDir:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final getPersonaPolicyManagerService()Lcom/android/server/knox/PersonaPolicyManagerService;
    .locals 2

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/knox/PersonaPolicyManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/server/knox/PersonaPolicyManagerService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/knox/PersonaPolicyManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/knox/PersonaPolicyManagerService;

    invoke-direct {v1, p0}, Lcom/android/server/knox/PersonaPolicyManagerService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/PersonaPolicyManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/android/server/knox/PersonaPolicyManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    return-object p0
.end method
