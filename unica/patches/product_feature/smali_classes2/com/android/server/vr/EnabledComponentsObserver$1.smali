.class public final Lcom/android/server/vr/EnabledComponentsObserver$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/EnabledComponentsObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/EnabledComponentsObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->this$0:Lcom/android/server/vr/EnabledComponentsObserver;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/internal/content/PackageMonitor;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->this$0:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method public final onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->this$0:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    return-void
.end method

.method public final onPackageModified(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->this$0:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    return-void
.end method

.method public final onSomePackagesChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->this$0:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    return-void
.end method
