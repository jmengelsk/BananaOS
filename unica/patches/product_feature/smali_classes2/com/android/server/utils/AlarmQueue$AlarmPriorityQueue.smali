.class Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;
.super Ljava/util/PriorityQueue;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Q:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/PriorityQueue<",
        "Landroid/util/Pair<",
        "TQ;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final sTimeComparator:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->sTimeComparator:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue;->sTimeComparator:Lcom/android/server/utils/AlarmQueue$AlarmPriorityQueue$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public final removeKey(Ljava/lang/Object;)Z
    .locals 5

    invoke-virtual {p0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    new-array v0, v0, [Landroid/util/Pair;

    invoke-virtual {p0, v0}, Ljava/util/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Pair;

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_0
    if-ltz v1, :cond_1

    aget-object v4, v0, v1

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {p0, v3}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    move v3, v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v3
.end method
