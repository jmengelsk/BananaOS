.class public final synthetic Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Landroid/content/pm/PackageInstaller$SessionInfo;

    iget p1, p1, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
