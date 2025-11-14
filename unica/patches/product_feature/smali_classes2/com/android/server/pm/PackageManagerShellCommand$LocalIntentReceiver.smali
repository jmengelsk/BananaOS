.class public final Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mLocalSender:Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver$1;

.field public final mResult:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->mResult:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver$1;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->mLocalSender:Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver$1;

    return-void
.end method


# virtual methods
.method public final getIntentSender()Landroid/content/IntentSender;
    .registers 2

    new-instance v0, Landroid/content/IntentSender;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->mLocalSender:Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver$1;

    invoke-direct {v0, p0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v0
.end method

.method public final getResult()Landroid/content/Intent;
    .registers 2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->mResult:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
