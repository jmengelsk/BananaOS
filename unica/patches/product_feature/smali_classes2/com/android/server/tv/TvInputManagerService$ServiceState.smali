.class public final Lcom/android/server/tv/TvInputManagerService$ServiceState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public bound:Z

.field public callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

.field public final component:Landroid/content/ComponentName;

.field public final connection:Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;

.field public final hardwareDeviceRemovedBuffer:Ljava/util/List;

.field public final hardwareInputMap:Ljava/util/Map;

.field public final hdmiDeviceRemovedBuffer:Ljava/util/List;

.field public final hdmiDeviceUpdatedBuffer:Ljava/util/List;

.field public final isHardware:Z

.field public needInit:Z

.field public reconnecting:Z

.field public service:Landroid/media/tv/ITvInputService;

.field public final sessionTokens:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hardwareInputMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hardwareDeviceRemovedBuffer:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hdmiDeviceRemovedBuffer:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hdmiDeviceUpdatedBuffer:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->component:Landroid/content/ComponentName;

    new-instance v0, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->connection:Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;

    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string/jumbo p3, "android.permission.TV_INPUT_HARDWARE"

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z

    iput-boolean p2, p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->needInit:Z

    return-void
.end method
