.class final Lcom/android/server/pm/PrepareFailure;
.super Lcom/android/server/pm/PackageManagerException;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mConflictingPackage:Ljava/lang/String;

.field public mConflictingPermission:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/16 v0, -0x74

    const-string v1, "Failed to prepare for install."

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 4

    instance-of v0, p1, Lcom/android/server/pm/PackageManagerException;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Lcom/android/server/pm/PackageManagerException;

    iget v0, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    goto :goto_c

    :cond_a
    const/16 v0, -0x6e

    :goto_c
    invoke-static {p2, p1}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public static ofInternalError(Ljava/lang/String;)Lcom/android/server/pm/PrepareFailure;
    .registers 3

    new-instance v0, Lcom/android/server/pm/PrepareFailure;

    const/4 v1, -0x4

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public final conflictsWithExistingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/pm/PrepareFailure;->mConflictingPermission:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/PrepareFailure;->mConflictingPackage:Ljava/lang/String;

    return-void
.end method
