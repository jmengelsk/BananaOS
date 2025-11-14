.class public interface abstract Lcom/android/server/wm/PackagesChange$PackagesUserChangeCallback;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public abstract dumpUserChanges(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method public initializeUserOverride(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onPackageUninstalled(ILjava/lang/String;)V
    .registers 3

    invoke-interface {p0, p1, p2}, Lcom/android/server/wm/PackagesChange$PackagesUserChangeCallback;->initializeUserOverride(ILjava/lang/String;)V

    return-void
.end method

.method public abstract onSystemReady()V
.end method

.method public abstract resetAllIfNeeded(II)V
.end method
