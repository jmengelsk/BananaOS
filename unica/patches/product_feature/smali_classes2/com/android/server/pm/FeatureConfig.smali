.class interface abstract Lcom/android/server/pm/FeatureConfig;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public abstract enableLogging(IZ)V
.end method

.method public abstract isGloballyEnabled()Z
.end method

.method public abstract isLoggingEnabled(I)Z
.end method

.method public abstract onSystemReady()V
.end method

.method public abstract packageIsEnabled(Lcom/android/server/pm/pkg/AndroidPackage;)Z
.end method

.method public abstract snapshot()Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;
.end method

.method public abstract updatePackageState(Lcom/android/server/pm/pkg/PackageStateInternal;Z)V
.end method
