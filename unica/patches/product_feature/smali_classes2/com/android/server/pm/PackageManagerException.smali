.class public Lcom/android/server/pm/PackageManagerException;
.super Ljava/lang/Exception;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final error:I

.field public final internalErrorCode:I

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->internalErrorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    invoke-direct {p0, p2, p4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->internalErrorCode:I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerException;->packageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->internalErrorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 p1, -0x6e

    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    iput p2, p0, Lcom/android/server/pm/PackageManagerException;->internalErrorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/16 p1, -0x6e

    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->internalErrorCode:I

    return-void
.end method

.method public static ofInternalError(ILjava/lang/String;)Lcom/android/server/pm/PackageManagerException;
    .registers 3

    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v0, p1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
