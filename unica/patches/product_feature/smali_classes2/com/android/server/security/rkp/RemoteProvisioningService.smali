.class public Lcom/android/server/security/rkp/RemoteProvisioningService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final CREATE_REGISTRATION_TIMEOUT:Ljava/time/Duration;


# instance fields
.field public final mBinderImpl:Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/security/rkp/RemoteProvisioningService;->CREATE_REGISTRATION_TIMEOUT:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;

    invoke-direct {p1, p0}, Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;-><init>(Lcom/android/server/security/rkp/RemoteProvisioningService;)V

    iput-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningService;->mBinderImpl:Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;

    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 2

    const-string/jumbo v0, "remote_provisioning"

    iget-object v1, p0, Lcom/android/server/security/rkp/RemoteProvisioningService;->mBinderImpl:Lcom/android/server/security/rkp/RemoteProvisioningService$RemoteProvisioningImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
