.class public Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAmInternal:Landroid/app/ActivityManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onStart()V
    .registers 3

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    new-instance v0, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService$BinderService;

    invoke-direct {v0, p0}, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService$BinderService;-><init>(Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;)V

    const-string/jumbo v1, "dynamic_instrumentation"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
