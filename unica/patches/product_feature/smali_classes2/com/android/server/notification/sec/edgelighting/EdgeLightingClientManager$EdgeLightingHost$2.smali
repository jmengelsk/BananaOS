.class public final Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost$2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

.field public final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost$2;->this$1:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    iput-object p2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost$2;->val$packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost$2;->this$1:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost$2;->val$packageName:Ljava/lang/String;

    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, -0x2

    const-string/jumbo v2, "edge_lighting"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v3, :cond_0

    const-string p0, "EdgeLightingClientManager"

    const-string/jumbo v1, "startEdgeLightingService"

    invoke-static {p0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;

    sget-object v0, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingClientManager;->createEdgeLightingService()V

    :cond_0
    return-void
.end method
