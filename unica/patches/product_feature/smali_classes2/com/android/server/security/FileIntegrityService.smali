.class public Lcom/android/server/security/FileIntegrityService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mService:Lcom/android/server/security/FileIntegrityService$BinderService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/security/FileIntegrityService$BinderService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/security/FileIntegrityService$BinderService;-><init>(Lcom/android/server/security/FileIntegrityService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/security/FileIntegrityService;->mService:Lcom/android/server/security/FileIntegrityService$BinderService;

    const-class p1, Lcom/android/server/security/FileIntegrityService;

    invoke-static {p1, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final onStart()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/security/FileIntegrityService;->mService:Lcom/android/server/security/FileIntegrityService$BinderService;

    const-string/jumbo v1, "file_integrity"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
