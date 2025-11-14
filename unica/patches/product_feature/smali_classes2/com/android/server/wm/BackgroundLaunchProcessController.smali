.class public final Lcom/android/server/wm/BackgroundLaunchProcessController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final CHECK_FOR_FGS_START:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;


# instance fields
.field public final mBackgroundActivityStartCallback:Lcom/android/server/notification/NotificationManagerService$3;

.field public mBackgroundStartPrivileges:Landroid/util/ArrayMap;

.field public mBalOptInBoundClientUids:Landroid/util/IntArray;

.field public final mUidHasActiveVisibleWindowPredicate:Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda3;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1, v1}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;-><init>(ZZZ)V

    sput-object v0, Lcom/android/server/wm/BackgroundLaunchProcessController;->CHECK_FOR_FGS_START:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda3;Lcom/android/server/notification/NotificationManagerService$3;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mUidHasActiveVisibleWindowPredicate:Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda3;

    iput-object p2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartCallback:Lcom/android/server/notification/NotificationManagerService$3;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Background activity start tokens (token: originating token):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1b
    if-ltz v0, :cond_41

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  - "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    :catchall_3f
    move-exception p1

    goto :goto_62

    :cond_41
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    if-eqz v0, :cond_60

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-lez v0, :cond_60

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "BoundClientUids:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    invoke-virtual {p2}, Landroid/util/IntArray;->toArray()[I

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_60
    monitor-exit p0

    return-void

    :goto_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_3f

    throw p1
.end method

.method public final getOriginatingTokensThatAllowBal()Ljava/util/List;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    :goto_b
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_26

    iget-object v1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v1}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v1}, Landroid/app/BackgroundStartPrivileges;->getOriginatingToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    move v1, v2

    goto :goto_b

    :cond_26
    return-object v0
.end method
