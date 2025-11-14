.class public final synthetic Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    return-void
.end method


# virtual methods
.method public final onResult(ILjava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
