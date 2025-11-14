.class public final Lcom/android/server/people/data/CallLogQueryHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final CALL_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mEventConsumer:Lcom/android/server/people/data/DataManager$CallLogContentObserver;

.field public mLastCallTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/server/people/data/CallLogQueryHelper;->CALL_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x2

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x3

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/people/data/DataManager$CallLogContentObserver;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/CallLogQueryHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/people/data/CallLogQueryHelper;->mEventConsumer:Lcom/android/server/people/data/DataManager$CallLogContentObserver;

    return-void
.end method
