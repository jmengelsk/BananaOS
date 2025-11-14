.class public final Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCallbacks:Landroid/os/RemoteCallbackList;

.field public final mDeathRecipient:Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda3;

.field public final mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

.field public final mSmartspaceConfig:Landroid/app/smartspace/SmartspaceConfig;

.field public final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceConfig;Landroid/os/IBinder;Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda3;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    iput-object p1, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

    iput-object p2, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mSmartspaceConfig:Landroid/app/smartspace/SmartspaceConfig;

    iput-object p3, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mToken:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mDeathRecipient:Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda3;

    return-void
.end method
