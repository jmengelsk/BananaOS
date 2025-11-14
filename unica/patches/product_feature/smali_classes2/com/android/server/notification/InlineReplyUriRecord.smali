.class public final Lcom/android/server/notification/InlineReplyUriRecord;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mKey:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public final mPermissionOwner:Landroid/os/IBinder;

.field public final mUris:Landroid/util/ArraySet;

.field public final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/InlineReplyUriRecord;->mPermissionOwner:Landroid/os/IBinder;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/InlineReplyUriRecord;->mUris:Landroid/util/ArraySet;

    iput-object p2, p0, Lcom/android/server/notification/InlineReplyUriRecord;->mUser:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/android/server/notification/InlineReplyUriRecord;->mPackageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/notification/InlineReplyUriRecord;->mKey:Ljava/lang/String;

    return-void
.end method
