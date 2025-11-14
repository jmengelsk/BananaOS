.class public abstract Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final binder:Landroid/os/IBinder;

.field public final component:Landroid/content/ComponentName;

.field public final connection:Lcom/android/server/sepunion/cover/CoverServiceManager$2;

.field public disconnectionCount:I

.field public final service:Landroid/os/IInterface;

.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

.field public final type:I

.field public final user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/IBinder;Lcom/android/server/sepunion/cover/CoverServiceManager$2;Landroid/os/UserHandle;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iput-object p2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->component:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->type:I

    iput-object p4, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->binder:Landroid/os/IBinder;

    invoke-virtual {p0, p4}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->service:Landroid/os/IInterface;

    iput-object p5, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->connection:Lcom/android/server/sepunion/cover/CoverServiceManager$2;

    iput-object p6, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->user:Landroid/os/UserHandle;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->disconnectionCount:I

    return-void
.end method


# virtual methods
.method public abstract asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method public final binderDied()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "binderDied : "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoverServiceInfo"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    sget-object v1, Lcom/android/server/sepunion/cover/CoverServiceManager;->LED_COVER:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Lcom/android/server/sepunion/cover/CoverServiceManager;->removeCoverServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)V

    return-void
.end method

.method public abstract onCoverAppStateChanged(Z)I
.end method

.method public abstract systemReady()V
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->component:Landroid/content/ComponentName;

    iget v1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->service:Landroid/os/IInterface;

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->user:Landroid/os/UserHandle;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "CoverServiceInfo[component=%s, type=%s, service=%s, user=%s]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract updateCoverState(Lcom/samsung/android/cover/CoverState;)V
.end method
