.class public final Lcom/android/server/power/PowerHistorian;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final INSTANCE:Lcom/android/server/power/PowerHistorian;


# instance fields
.field public final mRecordCache:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/power/PowerHistorian;

    invoke-direct {v0}, Lcom/android/server/power/PowerHistorian;-><init>()V

    sput-object v0, Lcom/android/server/power/PowerHistorian;->INSTANCE:Lcom/android/server/power/PowerHistorian;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerHistorian;->mRecordCache:Landroid/util/SparseArray;

    new-instance p0, Lcom/android/server/power/PowerHistorian$RecordBuffer;

    const/16 v1, 0x32

    invoke-direct {p0, v1}, Lcom/android/server/power/PowerHistorian$RecordBuffer;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance p0, Lcom/android/server/power/PowerHistorian$RecordBuffer;

    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/android/server/power/PowerHistorian$RecordBuffer;-><init>(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance p0, Lcom/android/server/power/PowerHistorian$RecordBuffer;

    const/16 v2, 0xc8

    invoke-direct {p0, v2}, Lcom/android/server/power/PowerHistorian$RecordBuffer;-><init>(I)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance p0, Lcom/android/server/power/PowerHistorian$RecordBuffer;

    invoke-direct {p0, v2}, Lcom/android/server/power/PowerHistorian$RecordBuffer;-><init>(I)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance p0, Lcom/android/server/power/PowerHistorian$RecordBuffer;

    invoke-direct {p0, v1}, Lcom/android/server/power/PowerHistorian$RecordBuffer;-><init>(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final addRecord(ILcom/android/server/power/PowerHistorian$Record;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerHistorian;->mRecordCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/power/PowerHistorian;->mRecordCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/PowerHistorian$RecordBuffer;

    iget-object p1, p0, Lcom/android/server/power/PowerHistorian$RecordBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iget v0, p0, Lcom/android/server/power/PowerHistorian$RecordBuffer;->mCapacity:I

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/server/power/PowerHistorian$RecordBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/PowerHistorian$RecordBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {p0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "PowerHistorian:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  WakeLock Release History:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/PowerHistorian;->mRecordCache:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerHistorian$RecordBuffer;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerHistorian$RecordBuffer;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  DisplayGroup History:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/PowerHistorian;->mRecordCache:Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerHistorian$RecordBuffer;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerHistorian$RecordBuffer;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  WakeUp History:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/PowerHistorian;->mRecordCache:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerHistorian$RecordBuffer;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerHistorian$RecordBuffer;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  AutomaticBrightness History:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/PowerHistorian;->mRecordCache:Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerHistorian$RecordBuffer;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerHistorian$RecordBuffer;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  BrightnessReason History:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/PowerHistorian;->mRecordCache:Landroid/util/SparseArray;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/PowerHistorian$RecordBuffer;

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerHistorian$RecordBuffer;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method
