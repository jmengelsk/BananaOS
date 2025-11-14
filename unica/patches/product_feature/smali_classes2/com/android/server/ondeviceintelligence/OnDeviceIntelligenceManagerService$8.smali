.class public final Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$8;
.super Landroid/os/ICancellationSignal$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic val$c:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$8;->val$c:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/os/ICancellationSignal$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$8;->val$c:Landroid/os/IBinder;

    invoke-static {p0}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/ICancellationSignal;->cancel()V

    return-void
.end method
