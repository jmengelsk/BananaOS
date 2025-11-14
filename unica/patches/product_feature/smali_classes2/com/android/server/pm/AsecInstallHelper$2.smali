.class public final Lcom/android/server/pm/AsecInstallHelper$2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/AsecInstallHelper;

.field public final synthetic val$mediaStatus:Z

.field public final synthetic val$reportStatus:Z


# direct methods
.method public constructor <init>(Lcom/android/server/pm/AsecInstallHelper;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$2;->this$0:Lcom/android/server/pm/AsecInstallHelper;

    iput-boolean p2, p0, Lcom/android/server/pm/AsecInstallHelper$2;->val$mediaStatus:Z

    iput-boolean p3, p0, Lcom/android/server/pm/AsecInstallHelper$2;->val$reportStatus:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallHelper$2;->this$0:Lcom/android/server/pm/AsecInstallHelper;

    iget-boolean v1, p0, Lcom/android/server/pm/AsecInstallHelper$2;->val$mediaStatus:Z

    iget-boolean p0, p0, Lcom/android/server/pm/AsecInstallHelper$2;->val$reportStatus:Z

    invoke-static {v0, v1, p0}, Lcom/android/server/pm/AsecInstallHelper;->-$$Nest$mupdateExternalMediaStatusInner(Lcom/android/server/pm/AsecInstallHelper;ZZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v1, "updateExternalMediaStatus RuntimeException"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 p0, 0x5

    const-string/jumbo v0, "updateExternalMediaStatus runtime exception: is asec cmd timeout?"

    invoke-static {p0, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    return-void
.end method
