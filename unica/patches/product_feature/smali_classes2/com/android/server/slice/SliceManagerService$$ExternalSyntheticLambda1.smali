.class public final synthetic Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/slice/SliceManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/slice/SliceManagerService;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/slice/SliceManagerService;

    iput-object p2, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda1;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/slice/SliceManagerService;

    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda1;->f$3:I

    sget v3, Lcom/android/server/slice/SliceManagerService;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_2

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/android/server/slice/SliceManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v0, p0, v2}, Lcom/android/server/slice/SliceManagerService;->isAssistant(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, p0, v2}, Lcom/android/server/slice/SliceManagerService;->isDefaultHomeApp(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xe

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0xd

    :goto_1
    invoke-virtual {v3, p0, v0, v1}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(IILjava/lang/String;)V

    :cond_2
    return-void
.end method
