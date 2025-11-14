.class public final synthetic Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Landroid/net/Uri;ZLcom/android/server/sepunion/eventdelegator/UnionContentObserver;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    iput-object p2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda2;->f$1:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda2;->f$2:Z

    iput-object p4, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda2;->f$3:Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;

    iput p5, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda2;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda2;->f$1:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda2;->f$2:Z

    iget-object v3, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda2;->f$3:Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;

    iget p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda2;->f$4:I

    sget v4, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
