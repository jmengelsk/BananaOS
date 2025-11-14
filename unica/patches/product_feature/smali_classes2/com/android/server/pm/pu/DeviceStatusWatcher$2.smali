.class public final Lcom/android/server/pm/pu/DeviceStatusWatcher$2;
.super Landroid/content/pm/IStagedApexObserver$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/pu/DeviceStatusWatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$2;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    invoke-direct {p0}, Landroid/content/pm/IStagedApexObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApexStaged(Landroid/content/pm/ApexStagedEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$2;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mIsUpdateReady:Z

    return-void
.end method
