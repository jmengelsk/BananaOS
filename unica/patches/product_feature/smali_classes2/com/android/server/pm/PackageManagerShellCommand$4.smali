.class public final Lcom/android/server/pm/PackageManagerShellCommand$4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;


# instance fields
.field public final synthetic val$userId:I

.field public final synthetic val$waitLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(ILjava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/PackageManagerShellCommand$4;->val$userId:I

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerShellCommand$4;->val$waitLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final onUserRemoved(Landroid/content/pm/UserInfo;)V
    .locals 1

    iget v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$4;->val$userId:I

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand$4;->val$waitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method
