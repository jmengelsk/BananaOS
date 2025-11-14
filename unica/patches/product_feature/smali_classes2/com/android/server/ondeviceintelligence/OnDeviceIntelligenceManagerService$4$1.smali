.class public final Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$1:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4;


# direct methods
.method public constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4$1;->this$1:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final sendResult(Landroid/os/Bundle;)V
    .registers 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4$1;->this$1:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4;

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    sget-object v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->setRemoteInferenceServiceUid(I)V

    return-void
.end method
