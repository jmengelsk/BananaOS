.class public final Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mActivityToken:Landroid/os/IBinder;

.field public final mAppThread:Landroid/app/IApplicationThread;

.field public final mAssistToken:Landroid/os/IBinder;

.field public final mShareableActivityToken:Landroid/os/IBinder;

.field public final mUid:I


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/IApplicationThread;Landroid/os/IBinder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mActivityToken:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mAssistToken:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mAppThread:Landroid/app/IApplicationThread;

    iput-object p4, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mShareableActivityToken:Landroid/os/IBinder;

    iput p5, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mUid:I

    return-void
.end method
