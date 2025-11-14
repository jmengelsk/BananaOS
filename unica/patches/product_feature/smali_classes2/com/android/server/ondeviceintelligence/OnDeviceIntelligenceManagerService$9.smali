.class public final Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$9;
.super Landroid/app/ondeviceintelligence/IProcessingSignal$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic val$c:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$9;->val$c:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/app/ondeviceintelligence/IProcessingSignal$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final sendSignal(Landroid/os/PersistableBundle;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$9;->val$c:Landroid/os/IBinder;

    invoke-static {p0}, Landroid/app/ondeviceintelligence/IProcessingSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ondeviceintelligence/IProcessingSignal;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/app/ondeviceintelligence/IProcessingSignal;->sendSignal(Landroid/os/PersistableBundle;)V

    return-void
.end method
