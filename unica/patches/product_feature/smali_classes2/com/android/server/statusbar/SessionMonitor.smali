.class public final Lcom/android/server/statusbar/SessionMonitor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSessionToListeners:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/SessionMonitor;->mSessionToListeners:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/statusbar/SessionMonitor;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/app/StatusBarManager;->ALL_SESSIONS:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    iget-object v1, p0, Lcom/android/server/statusbar/SessionMonitor;->mSessionToListeners:Ljava/util/Map;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_2c
    return-void
.end method


# virtual methods
.method public final requireSetterPermissions(I)V
    .registers 5

    and-int/lit8 v0, p1, 0x1

    const-string/jumbo v1, "StatusBarManagerService.SessionMonitor"

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/statusbar/SessionMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CONTROL_KEYGUARD"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1b

    iget-object p0, p0, Lcom/android/server/statusbar/SessionMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method
