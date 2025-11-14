.class public final Lcom/android/server/usb/DualOutputStreamDumpSink;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDumpOutputStream:Lcom/android/internal/util/dump/DualDumpOutputStream;

.field public final mId:J


# direct methods
.method public constructor <init>(Lcom/android/internal/util/dump/DualDumpOutputStream;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/DualOutputStreamDumpSink;->mDumpOutputStream:Lcom/android/internal/util/dump/DualDumpOutputStream;

    iput-wide p2, p0, Lcom/android/server/usb/DualOutputStreamDumpSink;->mId:J

    return-void
.end method
