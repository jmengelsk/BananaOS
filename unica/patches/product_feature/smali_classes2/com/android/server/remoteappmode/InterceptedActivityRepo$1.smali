.class Lcom/android/server/remoteappmode/InterceptedActivityRepo$1;
.super Ljava/util/LinkedHashMap;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/Integer;",
        "Lcom/android/server/remoteappmode/InterceptedActivityInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/remoteappmode/InterceptedActivityRepo;


# direct methods
.method public constructor <init>(Lcom/android/server/remoteappmode/InterceptedActivityRepo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/remoteappmode/InterceptedActivityRepo$1;->this$0:Lcom/android/server/remoteappmode/InterceptedActivityRepo;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    const/16 p1, 0xa

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
