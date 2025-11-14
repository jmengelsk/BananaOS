.class public final Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final callingUid:I

.field public final userCheck:Ljava/util/function/IntPredicate;


# direct methods
.method public constructor <init>(ILjava/util/function/IntPredicate;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;->callingUid:I

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;->userCheck:Ljava/util/function/IntPredicate;

    return-void
.end method
