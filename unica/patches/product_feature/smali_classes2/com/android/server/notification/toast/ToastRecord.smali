.class public abstract Lcom/android/server/notification/toast/ToastRecord;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final displayId:I

.field public final isSystemToast:Z

.field public mDuration:I

.field public final mNotificationManager:Lcom/android/server/notification/NotificationManagerService;

.field public final message:Ljava/lang/String;

.field public final pid:I

.field public final pkg:Ljava/lang/String;

.field public final token:Landroid/os/IBinder;

.field public final uid:I

.field public final windowToken:Landroid/os/Binder;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;ZLandroid/os/IBinder;ILandroid/os/Binder;ILjava/lang/String;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/toast/ToastRecord;->mNotificationManager:Lcom/android/server/notification/NotificationManagerService;

    iput p2, p0, Lcom/android/server/notification/toast/ToastRecord;->uid:I

    iput p3, p0, Lcom/android/server/notification/toast/ToastRecord;->pid:I

    iput-object p4, p0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/server/notification/toast/ToastRecord;->isSystemToast:Z

    iput-object p6, p0, Lcom/android/server/notification/toast/ToastRecord;->token:Landroid/os/IBinder;

    iput-object p8, p0, Lcom/android/server/notification/toast/ToastRecord;->windowToken:Landroid/os/Binder;

    iput p9, p0, Lcom/android/server/notification/toast/ToastRecord;->displayId:I

    iput-object p10, p0, Lcom/android/server/notification/toast/ToastRecord;->message:Ljava/lang/String;

    iput p7, p0, Lcom/android/server/notification/toast/ToastRecord;->mDuration:I

    return-void
.end method


# virtual methods
.method public abstract hide()V
.end method

.method public abstract isAppRendered()Z
.end method

.method public abstract show()Z
.end method
