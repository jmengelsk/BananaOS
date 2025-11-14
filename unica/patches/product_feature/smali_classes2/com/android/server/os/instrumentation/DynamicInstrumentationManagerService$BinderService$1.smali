.class public final Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService$BinderService$1;
.super Landroid/os/instrumentation/IOffsetCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic val$callback:Landroid/os/instrumentation/IOffsetCallback;


# direct methods
.method public constructor <init>(Landroid/os/instrumentation/IOffsetCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService$BinderService$1;->val$callback:Landroid/os/instrumentation/IOffsetCallback;

    invoke-direct {p0}, Landroid/os/instrumentation/IOffsetCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/instrumentation/ExecutableMethodFileOffsets;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService$BinderService$1;->val$callback:Landroid/os/instrumentation/IOffsetCallback;

    invoke-interface {p0, p1}, Landroid/os/instrumentation/IOffsetCallback;->onResult(Landroid/os/instrumentation/ExecutableMethodFileOffsets;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
