.class public final Lcom/android/server/uri/UriPermission$Snapshot;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final persistedCreateTime:J

.field public final persistedModeFlags:I

.field public final sourcePkg:Ljava/lang/String;

.field public final targetPkg:Ljava/lang/String;

.field public final targetUserId:I

.field public final uri:Lcom/android/server/uri/GrantUri;


# direct methods
.method public constructor <init>(Lcom/android/server/uri/UriPermission;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/android/server/uri/UriPermission;->targetUserId:I

    iput v0, p0, Lcom/android/server/uri/UriPermission$Snapshot;->targetUserId:I

    iget-object v0, p1, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/uri/UriPermission$Snapshot;->sourcePkg:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/uri/UriPermission$Snapshot;->targetPkg:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iput-object v0, p0, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget v0, p1, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    iput v0, p0, Lcom/android/server/uri/UriPermission$Snapshot;->persistedModeFlags:I

    iget-wide v0, p1, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    iput-wide v0, p0, Lcom/android/server/uri/UriPermission$Snapshot;->persistedCreateTime:J

    return-void
.end method
