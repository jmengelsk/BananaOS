.class public Lcom/android/server/resources/ResourcesManagerService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field public final mService:Lcom/android/server/resources/ResourcesManagerService$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/server/resources/ResourcesManagerService$1;

    invoke-direct {p1, p0}, Lcom/android/server/resources/ResourcesManagerService$1;-><init>(Lcom/android/server/resources/ResourcesManagerService;)V

    iput-object p1, p0, Lcom/android/server/resources/ResourcesManagerService;->mService:Lcom/android/server/resources/ResourcesManagerService$1;

    const-string/jumbo v0, "resources"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public final onStart()V
    .registers 1

    invoke-static {}, Landroid/content/res/ResourceTimer;->start()V

    return-void
.end method
