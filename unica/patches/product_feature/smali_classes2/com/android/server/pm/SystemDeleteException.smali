.class final Lcom/android/server/pm/SystemDeleteException;
.super Ljava/lang/Exception;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field final mReason:Lcom/android/server/pm/PackageManagerException;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerException;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SystemDeleteException;->mReason:Lcom/android/server/pm/PackageManagerException;

    return-void
.end method
